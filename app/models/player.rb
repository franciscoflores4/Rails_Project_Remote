class Player < ApplicationRecord
	belongs_to :team
	has_many :jerseys
	validates :name, presence:true
end
