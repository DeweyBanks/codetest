class AddProductCountToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :product_count, :integer
  end
end
