require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  warehouse = Warehouse.find(3)
  shipment = Shipment.create!(warehouse_id: warehouse.id)

  it "has an array of shipments" do
    expect(warehouse.shipments).to exist
  end


end
