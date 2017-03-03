require 'rails_helper'

RSpec.describe Shipment, type: :model do
  # shipment = Shipment.create!(warehouse_id: 2)

  before(:each) do
    @shipment = FactoryGirl.build(:shipment)
  end

  it "should belong to a warehouse" do
    should belong_to(:warehouse)
  end

  it "should belong to a order" do
    should belong_to(:order)
  end

  it "should have many products" do
    should have_many(:products)
  end

  it { is_expected.to callback(:assign_number).after(:create) }

end
