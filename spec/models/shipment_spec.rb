require 'rails_helper'

RSpec.describe Shipment, type: :model do
  shipment = Shipment.create!(warehouse_id: 2)
  it "assigns a number when created" do
    expect(shipment.number).not_to be_empty
  end

  it "belongs to assigned warehouse" do
    expect(shipment.warehouse.name).to eq("CHICAGO")
  end

  it { is_expected.to callback(:assign_number).after(:create) }
end
