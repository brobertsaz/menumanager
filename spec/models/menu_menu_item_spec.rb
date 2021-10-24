require 'rails_helper'

RSpec.describe MenuMenuItem, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:menu_id) }
    it { is_expected.to validate_presence_of(:menu_item_id) }
    it { should belong_to :menu_item }
    it { should belong_to :menu }
  end
end