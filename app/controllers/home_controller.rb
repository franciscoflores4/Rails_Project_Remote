class HomeController < ApplicationController
  def index
  	@jerseys = Jersey.all.page params[:page]


  end 

  def search
  	 #  	 @js = @jerseys = Jersey.search(params[:search])
    # @jsearch = Jersey.search(params[:search])
     @js = Jersey.search(params[:search])
    # @j_counts = Jersey.count(:group => :player[:name], 
    #    :order => 'count_all DESC', :limit => 100)
  end
end
