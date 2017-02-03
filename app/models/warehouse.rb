class Warehouse < ActiveRecord::Base
  has_many :shipments
  has_one :inventory, :dependent => :destroy, :inverse_of => :warehouse
  has_many :products, through: :inventory

  accepts_nested_attributes_for :inventory, allow_destroy: true
end

Role:
has_many assignments
has_many zombies through assignments
scout
captain
soldier
brain taster

assignments:
belongs_to Role
belongs_to Zombie
role_id
zombie_id

zombie:
has_many assignments
has_many roles through assignments
