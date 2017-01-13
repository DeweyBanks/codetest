require 'rails_helper'

RSpec.describe Inventory, type: :model do
  inventory = Inventory.first
  it "contains products" do
    expect(inventory.products).not_to be_empty
  end

  it "belongs to a warehouse" do
    expect(inventory.warehouse).to be_an_instance_of(Warehouse)
  end
end
