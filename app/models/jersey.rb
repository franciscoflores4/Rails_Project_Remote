class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :category
	has_many :orders
	validates :price, :size, :stock_quantity, :category, presence:true
end
