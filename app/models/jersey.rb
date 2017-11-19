class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :category
	has_many :orders
	validates :price, :size, :stock_quantity, :category, presence:true

	 def self.search(search)
	 	if search
		    @js = Jersey.joins(:player).select('player.name').where('player[:name] LIKE ? "%#{search}%" AND player[:id] = player_id').first
		  else
		    find(:all)
		end
	 end
end
