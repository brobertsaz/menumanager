require 'rails_helper'

RSpec.describe Menu, type: :model do
  context 'validations' do
    it 'fails with no name' do
      menu = Menu.new().save
      expect(menu).to eq(false)
    end

    it 'saves with name' do
      menu = Menu.new(name: "Joes").save
      expect(menu).to eq(true)
    end
  end
end
