class RemoveCountFromInventory < ActiveRecord::Migration
  def change
    remove_column :inventories, :count, :integer
  end
end
