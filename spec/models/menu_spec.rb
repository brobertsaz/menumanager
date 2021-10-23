require 'rails_helper'

RSpec.describe Menu, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'create' do
    it 'creates with required fields' do
      expect(Menu.create(name: "Joes").save).to eq true
    end
  end
end
