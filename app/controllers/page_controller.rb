class PagesController < ApplicationController
	def about
		@page = Page.find_by_title('About Us')
	end

	def contact
		@page = Page.find_by_title('Contact Us')
	end
end
