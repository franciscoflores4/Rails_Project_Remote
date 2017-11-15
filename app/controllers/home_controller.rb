class HomeController < ApplicationController
  def index
  	@jerseys = Jersey.all.page params[:page]
  end
end
