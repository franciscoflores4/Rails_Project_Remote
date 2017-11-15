class HomeController < ApplicationController
  def index
  	@jerseys = Jersey.all
  end
end
