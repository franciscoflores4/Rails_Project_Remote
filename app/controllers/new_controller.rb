class NewController < ApplicationController
	def new
		@jerseys = Jersey.joins(:category).where('name = "Limited Edition"').order('price ASC')
	end
end
