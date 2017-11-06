class Customer < ApplicationRecord
	has_many :orders
	belongs_to :province
	validates :first_name, :last_name, :address, :city, :country, :postal_code, presence:true
	validates :last_name, length: {maximum: 30}
end
