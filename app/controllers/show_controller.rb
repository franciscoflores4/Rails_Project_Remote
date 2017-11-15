class ShowController < ApplicationController
	def show
		@jersey = Jersey.find(params[:id])
	end
end
