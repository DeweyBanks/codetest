require 'rails_helper'

RSpec.describe Order, type: :model do
  it "assigns a shipment to a warehouse when created" do
    @product = Product.find_by(name: 'phone')
    @order = Order.new
    @order.products << @product
    @order.save!

    shipment = @product.inventory.warehouse.shipments.where(order_id: @order.id).first

    expect(shipment.warehouse.name).to eq("CHICAGO")
  end

  it { is_expected.to callback(:create_shipment).after(:create) }
  it { is_expected.to callback(:assign_number).after(:create) }
end
