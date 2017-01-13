class AddOrderToShipments < ActiveRecord::Migration
  def change
    add_reference :shipments, :order, index: true, foreign_key: true
  end
end
