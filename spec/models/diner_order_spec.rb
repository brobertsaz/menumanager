require 'rails_helper'

RSpec.describe DinerOrder, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:diner_id) }
    it { is_expected.to validate_presence_of(:order_id) }
    it { should belong_to :diner }
    it { should belong_to :order }
  end
end
