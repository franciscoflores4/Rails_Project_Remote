class Category < ApplicationRecord
	has_many :jerseys
	validates :name, presence:true
end
