class Order < ApplicationRecord
	has_many :jerseys
	belongs_to :customer
	validates :status, presence:true
	belongs_to :order_status
	has_many :order_items
	before_create :set_order_status
	before_save :update_subtotal

	def subtotal
		order_items.collect { |oi| oi.valid ? (oi.quantity * oi.price) : 0}
	end

	private 
	def set_order_status
		self.order_status_id = 1
	end

	def update_subtotal
		self[:subtotal] = subtotal
	end
end
