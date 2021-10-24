require 'rails_helper'

RSpec.describe Menu, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { should have_many :menu_items }
    it { should belong_to :restaurant }
  end

  describe 'create' do
    it 'creates with required fields' do
      restaurant = Restaurant.create(name: "Joes")
      expect(Menu.create(name: "Lunch",
                         restaurant: restaurant ).save).to eq true
    end
  end
end
