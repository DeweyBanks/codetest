require 'rails_helper'

RSpec.describe Inventory, type: :model do

  before(:each) do
    @inventory = FactoryGirl.build :inventory
  end

  it "can be created using a factory" do
    expect(@inventory).to be_a Inventory
  end

  it "contains products" do
    expect(@inventory.products).not_to be_empty
  end

  it "belongs to a warehouse" do
    expect(@inventory.warehouse).to be_an_instance_of(Warehouse)
  end

end
