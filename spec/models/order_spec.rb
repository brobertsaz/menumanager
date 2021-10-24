require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:total) }
    it { should have_many :diner_orders }
  end
end
