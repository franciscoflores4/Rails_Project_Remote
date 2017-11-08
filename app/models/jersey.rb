class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	has_many :orders
	validates :price, :size, :stock_quantity, presence:true
end
