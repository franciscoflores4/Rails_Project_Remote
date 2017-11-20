class Order < ApplicationRecord
	has_many :jerseys
	belongs_to :customer
	before_create :set_order_status
	before_save :update_subtotal
	validates :status, presence:true

	def subtotal
		order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
	end

	private 
	def set_order_status
		self.status = "Order Received"
	end

	def update_subtotal
		self[:subtotal] = subtotal
	end
end
