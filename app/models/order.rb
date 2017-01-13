class Order < ActiveRecord::Base
  belongs_to :shipment
  has_many :products

  after_create :create_shipment
  after_create :assign_number

  rails_admin do
    object_label_method :number
  end


  def assign_number
    self.number = 'OR' + rand.to_s[2..11]
    self.save!
  end

  def shipment
    shipment = Shipment.find_by(order_id: self.id)
    if shipment.present?
      shipment.number
    else
    end
  end

  def create_shipment
    # TODO
    # create multiple shipments if order has products located in different warehouses
    shipment = Shipment.new

    # grab the first product from the order.
    order_product = self.products.first

    warehouses = Warehouse.all
    warehouses.each do |warehouse|
      if
        # search the inventory of each warehouse to see if it includes the order_product, if it does, assign the shipment to that warehouse
        warehouse.products.include?(order_product)
        shipment.warehouse_id = warehouse.id
      else
        # if the product isn't found in any warehouse, respond with a message saying so
        puts "#{order_product.name} not found in #{warehouse.name}."
      end
    end
    shipment.order_id = self.id
    shipment.save!
  end

end
