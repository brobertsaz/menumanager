require 'rails_helper'

RSpec.describe MenuItemOrder, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:order_id) }
    it { is_expected.to validate_presence_of(:menu_item_id) }
    it { should belong_to :menu_item }
    it { should belong_to :order }
  end
end
