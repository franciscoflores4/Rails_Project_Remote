class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	has_many :orders
	validates :price, :size, :quantity_total, presence:true
end
