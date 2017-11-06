class Customer < ApplicationRecord
	validates :first_name, :last_name, :address, :city, :country, :postal_code, presence:true
	validates :last_name, length: {maximum: 30}
end
