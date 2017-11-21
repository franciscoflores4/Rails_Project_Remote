class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :category
	has_many :orders
	has_many :cart_items
	has_many:carts, :through => :cart_items
	validates :price, :size, :stock_quantity, :category, presence:true

	 def self.search(search)
	 	if search
		    @js = Jersey.joins(:player).select('*').where('name LIKE ?', "%#{search}%").first
		  else
		    find(:all)
		end
	 end
end
