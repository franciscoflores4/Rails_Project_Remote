class OrderItem < ApplicationRecord
  belongs_to :jersey
  belongs_to :order

  validates :quantity, presence:true, numericality: {only_integer: true, greater_than: 0}
  validate :jersey_present
  validate :order_present

  def price
  	if persisted?
  		self[:price]
  	else
  		jersey.price
  	end
  end

  def total
  	price * quantity
  end

  private 
  def jersey_present
  	if product.nil?
  		errors.add(:jersey, 'is not valid or is not active')
  	end
  end

  def finalize
  	self[:price] = price
  	self[:total] = quantity * self[:price]
  end
end
