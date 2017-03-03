require 'rails_helper'

RSpec.describe Product, type: :model do
  it "belongs to an inventory" do
    should belong_to(:inventory)
  end

  it "belongs to an order" do
    should belong_to(:order)
  end

end
