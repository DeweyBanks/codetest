require 'rails_helper'

RSpec.describe Order, type: :model do

  it "should have many products" do
    should have_many(:products)
  end

  it "should have many shipments" do
    should have_many(:shipments)
  end

  it { is_expected.to callback(:create_shipment).after(:create) }
  it { is_expected.to callback(:assign_number).after(:create) }
end
