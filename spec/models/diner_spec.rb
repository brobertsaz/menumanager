require 'rails_helper'

RSpec.describe Diner, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { should have_many :diner_orders }
  end
end
