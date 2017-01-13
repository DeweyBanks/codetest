class CreateJoinTableOrdersShipments < ActiveRecord::Migration
  def change
    create_join_table :orders, :shipments do |t|
      t.index [:order_id, :shipment_id]
      t.index [:shipment_id, :order_id]
    end
  end
end
