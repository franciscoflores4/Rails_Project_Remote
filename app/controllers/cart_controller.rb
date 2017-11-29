class CartController < ApplicationController
	def create
		@cart = Cart.find(session[:cart_id])
    product = Product.find(params[:jersey_id])
    @line_item = @cart.add_product(product.id)
end
end
