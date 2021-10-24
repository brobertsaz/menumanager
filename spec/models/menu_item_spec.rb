require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { should have_many :menu_menu_items }

    it { should define_enum_for(:item_type).
        with_values(
           entree: 0, appetizer: 1, side: 2
        ).backed_by_column_of_type(:integer) }
    it { should allow_values(:entree, :appetizer, :side).for(:item_type) }

  end

  describe 'create' do
    let(:restaurant) { Restaurant.create(name: "Joes") }
    let(:menu)       { Menu.create(name: "Dinner", restaurant: restaurant) }
    let(:menu2)      { Menu.create(name: "Lunch", restaurant: restaurant) }

    it 'creates with required fields' do
      expect(menu.menu_items.create(title: 'Burger',
                                    item_type: 0,
                                    description: "Delicious Cheeseburger",
                                    price: 9.99).save).to eq true
    end

    it 'requires unique name' do
      expect(menu.menu_items.create(title: "Grilled Burger",
                                    item_type: 0,
                                    description: "Delicious Cheeseburger",
                                    price: 9.99).save).to eq true


      expect(menu.menu_items.create(title: "Grilled Burger",
                                    description: "Delicious Cheeseburger",
                                    item_type: 0,
                                    price: 9.99).save).to eq false


      expect(menu.menu_items.create(title: "CheeseBurger",
                                    description: "Delicious Cheeseburger",
                                    item_type: 0,
                                    price: 9.99).save).to eq true
    end

    it 'can be on mutiple menus for restaurant' do
      menu_item = MenuItem.create(title: 'Steak', description: "Yummy", price: 19.99, item_type: 0)
      menu.menu_items << menu_item
      menu2.menu_items << menu_item
      expect(menu.menu_items.include? menu_item).to eq true
      expect(menu2.menu_items.include? menu_item).to eq true
    end

    it 'allows item to be entree' do
      expect(MenuItem.create(title: 'Steak',
                             description: "Yummy",
                             price: 19.99,
                             item_type: "entree").save).to be true
    end

    it 'allows item to be side' do
      expect(MenuItem.create(title: 'Steak',
                        description: "Yummy",
                        price: 19.99,
                        item_type: "side").save).to be true

    end
  end
end

