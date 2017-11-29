class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :category
	has_many :orders
	has_many :cart_items
	has_many:carts, :through => :cart_items
	validates :price, :size, :stock_quantity, :category, presence:true
	has_many :order_items
end
