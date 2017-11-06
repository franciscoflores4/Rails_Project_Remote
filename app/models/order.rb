class Order < ApplicationRecord
	has_many :jerseys
	belongs_to :customer
	validates :status, presence:true
end
