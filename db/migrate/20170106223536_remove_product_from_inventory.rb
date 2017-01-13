class RemoveProductFromInventory < ActiveRecord::Migration
  def change
    remove_reference :inventories, :product, index: true, foreign_key: true
  end
end
