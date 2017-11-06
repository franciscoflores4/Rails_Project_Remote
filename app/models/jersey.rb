class Jersey < ApplicationRecord
	validates :price, :size, :quantity_total, presence:true
end
