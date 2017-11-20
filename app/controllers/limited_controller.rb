class LimitedController < ApplicationController
	def limited
		@jerseys = Jersey.joins(:category).where('name = "Limited Edition"').order('price ASC')
	end
end
