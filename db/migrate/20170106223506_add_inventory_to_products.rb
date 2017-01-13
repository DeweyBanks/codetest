class AddInventoryToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :inventory, index: true, foreign_key: true
  end
end
