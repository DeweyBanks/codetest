require 'rails_helper'

RSpec.describe Order, type: :model do

  it "should have many products" do
    should have_many(:products)
  end

  it "should have many shipments" do
    should have_many(:shipments)
  end

  it "should assign shipment to warehouse based on product" do
    product = Product.find_by(name: 'tablet')
    warehouse = product.inventory.warehouse
    order = Order.new
    order.products << product
    order.save
    shipment = Shipment.find_by(order_id: order.id)
    expect(shipment.warehouse).to eql(warehouse)
  end

  it { is_expected.to callback(:create_shipment).after(:create) }
  it { is_expected.to callback(:assign_number).after(:create) }
end
