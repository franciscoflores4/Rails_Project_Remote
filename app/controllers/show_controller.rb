class ShowController < ApplicationController
	def show
		@jersey = Jersey.find(params[:id]).page params[:page]
	end
end
