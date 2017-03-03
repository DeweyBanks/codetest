require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  before(:each) do
    @warehouse = FactoryGirl.build(:warehouse)
  end

  it "should have many shipments" do
    should have_many(:shipments)
  end

  it "should have an inventory" do
    should have_one(:inventory)
  end

  it "should have many products" do
    should have_many(:products)
  end

end
