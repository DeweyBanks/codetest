class Shipment < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :order
  has_many :products, through: :order

  after_create :assign_number

  rails_admin do
    object_label_method :number
  end

  def assign_number
    self.number = 'S' + rand.to_s[2..11]
    self.save!
  end

end
