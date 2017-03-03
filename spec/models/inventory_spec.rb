require 'rails_helper'

RSpec.describe Inventory, type: :model do

  before(:each) do
    @inventory = FactoryGirl.build(:inventory, warehouse_id: 1)
  end

  it "can be created using a factory" do
    expect(@inventory).to be_a Inventory
  end

  it "should have many products" do
    should have_many(:products)
  end

  it "should belong to a warehouse" do
    should belong_to(:warehouse)
  end

  it "should validate the presence of a warehouse" do
    should validate_presence_of(:warehouse).
      with_message('A warehouse must be assigned to the inventory')
  end

end
