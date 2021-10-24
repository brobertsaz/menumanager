require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:menu_id) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { should belong_to :menu }
  end

  describe 'create' do
    let(:restaurant) { Restaurant.create(name: "Joes") }
    let(:menu)       { Menu.create(name: "Dinner", restaurant: restaurant) }

    it 'creates with required fields' do
      expect(MenuItem.create(menu: menu,
                             title: 'Burger',
                             description: "Delicious Cheeseburger",
                             price: 9.99).save).to eq true
    end

    it 'requires unique name' do
      expect(MenuItem.create(title: "Burger",
                             menu: menu,
                             description: "Delicious Cheeseburger",
                             price: 9.99).save).to eq true


      expect(MenuItem.create(title: "Burger",
                             menu: menu,
                             description: "Delicious Cheeseburger",
                             price: 9.99).save).to eq false


      expect(MenuItem.create(title: "CheeseBurger",
                             menu: menu,
                             description: "Delicious Cheeseburger",
                             price: 9.99).save).to eq true
    end

    it 'can be on mutiple menus for restaurant' do
      # let(:menu)       { Menu.create(name: "Dinner", restaurant: restaurant) }

    end
  end
end

