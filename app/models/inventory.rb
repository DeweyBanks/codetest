class Inventory < ActiveRecord::Base
  belongs_to :warehouse, :inverse_of => :inventory
  has_many :products

  rails_admin do
    object_label_method :label
  end

  def label
    if self.warehouse.present?
      self.warehouse.name
    end
  end
end
