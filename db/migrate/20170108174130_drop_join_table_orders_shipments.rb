class DropJoinTableOrdersShipments < ActiveRecord::Migration
  def change
    drop_join_table :orders, :shipments
  end
end
