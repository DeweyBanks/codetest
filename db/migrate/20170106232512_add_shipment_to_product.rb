class AddShipmentToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :shipment, index: true, foreign_key: true
  end
end
