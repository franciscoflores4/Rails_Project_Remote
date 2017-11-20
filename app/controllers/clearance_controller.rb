class ClearanceController < ApplicationController
	def clearance
		@jerseys = Jersey.joins(:category).where('name = "Clearance"').order('price ASC')
	end
end
