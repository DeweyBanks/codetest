class Order < ActiveRecord::Base
  has_many :products
  has_many :shipments

  after_create :create_shipment
  after_create :assign_number

  rails_admin do
    object_label_method :number
  end


  def assign_number
    self.number = 'OR' + rand.to_s[2..11]
    self.save!
  end


  def create_shipment
    products.each do |product|
      shipment = Shipment.new(warehouse_id: product.inventory.warehouse.id, order_id: self.id)
      current_order_shipment = Shipment.find_by(order_id: shipment.order_id)
      current_warehouse_shipment =Shipment.find_by(warehouse_id: shipment.warehouse_id)
      if current_order_shipment && current_warehouse_shipment
      else
        shipment.save
      end
    end
  end

end
