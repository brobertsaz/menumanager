require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:menu_id) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end
end

