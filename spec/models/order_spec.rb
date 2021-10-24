require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:total) }
    it { should have_many :diner_orders }
  end

  context 'create' do
    let(:restaurant)   { Restaurant.create(name: "Joes") }
    let(:menu)         { Menu.create(name: "Dinner", restaurant: restaurant) }
    let(:diner)        { Diner.create(email: 'test@test.com', password: 'password')}
    let(:order)        { Order.create(diner: diner, total: 99.99) }
    let(:salad_entree) { MenuItem.create(title: 'Salad',
                                         item_type: 0,
                                         description: "Delicious Salad",
                                         price: 9.99)}
    let(:salad_side)   { MenuItem.create(title: 'Salad',
                                         item_type: 2,
                                         description: "Delicious Salad",
                                         price: 9.99)}


    it 'adds salad as a entree' do
      order.menu_items << salad_entree
      expect(order.menu_items.include? salad_entree).to eq true
    end

    it 'adds salad as a side' do
      order.menu_items << salad_side
      expect(order.menu_items.include? salad_side).to eq true
    end
  end
end
