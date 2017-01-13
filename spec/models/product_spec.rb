require 'rails_helper'

RSpec.describe Product, type: :model do
  it "belongs to an inventory" do
    product = Product.create!(name: 'TEST', inventory_id: 1)
    expect(product.inventory).to be_an_instance_of(Inventory)
  end
end
