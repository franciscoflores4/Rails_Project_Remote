class Team < ApplicationRecord
	has_many :jerseys
	has_many :players
	validates :name, presence:true
end
