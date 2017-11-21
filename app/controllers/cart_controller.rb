class CartController < ApplicationController
	def index
		total
	end
	def show
    @order_items = current_order.order_items
  end
	def cart
		session[:cart] << params[:jersey] unless session[:cart].include? params[:jersey]
	end

	def remove
		@cart_item = params[:jersey]
		session[:cart].delete @cart_item
		total
	end

	private 
	def total
		@jerseys = Jersey.where(slug: session[:cart])
		@sub_total - @jerseys.map(&:price).reduce(:+)
	end
end
