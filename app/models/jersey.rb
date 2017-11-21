class Jersey < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :category
	has_many :orders
	validates :price, :size, :stock_quantity, :category, presence:true

	 def self.search(search)
	 	if search
		    @js = Jersey.joins(:player).select('*').where('name LIKE ?', "%#{search}%").first
		  else
		    find(:all)
		end
	 end
	 
	def index
	    @products = Jersey.all
	    @order_item = current_order.order_items.new
	  end
end
