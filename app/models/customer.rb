class Customer < ApplicationRecord
	has_many :orders
	belongs_to :province
	validates :first_name, :last_name, :address, :city, :province, :postal_code, presence:true
	validates :last_name, length: {maximum: 30}

	def to_s
		self.first_name + " " + self.last_name
	end
end
