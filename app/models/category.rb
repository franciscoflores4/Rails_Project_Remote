class Category < ApplicationRecord
	has_many :jerseys
	validates :category, presence:true
end
