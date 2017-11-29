class JerseyController < ApplicationController
	def index
		@products = Jersey.all
		@order_item = current_order.order_items.new
	end
end
