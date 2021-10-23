require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:menu_id) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe 'create' do
    it 'creates with required fields' do
      menu = Menu.create(name: "Joes")
      expect(MenuItem.create(menu: menu,
                             title: 'Burger',
                             description: "Delicous Cheeseburger",
                             price: 9.99).save).to eq true
    end
  end
end

