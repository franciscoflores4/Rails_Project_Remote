class HomeController < ApplicationController
  def index
  	@jerseys = Jersey.order("price DESC").all.page(params[:page])
  	@order_item = current_order.order_items.new
  end 
end
