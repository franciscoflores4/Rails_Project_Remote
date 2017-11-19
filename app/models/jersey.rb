class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :category
	has_many :orders
	validates :price, :size, :stock_quantity, :category, presence:true

	 def self.search(search)
	 	if search
		    @js = Jersey.joins(:player).select('player_id').where('name LIKE ?', "%#{search}%").first
		  	@a = Jersey.where('player_id' => @js)
		  else
		    find(:all)
		end
	 end
end
