class OnSaleController < ApplicationController
	def on_sale
		@jerseys = Jersey.joins(:category).where('name = "On Sale"').order('price ASC')
	end
end
