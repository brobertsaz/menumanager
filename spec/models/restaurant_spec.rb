require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { should have_many :menus }
  end


  describe 'create' do
    it 'creates with required fields' do
      expect(Restaurant.create(name: "Joes").save).to eq true
    end
  end
end
