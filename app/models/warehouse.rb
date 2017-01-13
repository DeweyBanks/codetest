class Warehouse < ActiveRecord::Base
  has_many :shipments
  has_one :inventory, :dependent => :destroy, :inverse_of => :warehouse
  has_many :products, through: :inventory

  accepts_nested_attributes_for :inventory, allow_destroy: true
end
