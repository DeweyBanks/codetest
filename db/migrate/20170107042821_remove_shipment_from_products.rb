class RemoveShipmentFromProducts < ActiveRecord::Migration
  def change
    remove_reference :products, :shipment, index: true, foreign_key: true
  end
end
