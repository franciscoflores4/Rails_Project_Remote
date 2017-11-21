class CartController < ApplicationController
	def initialize 
		
	    @product = Jersey.find(1)
	    @cart_1 = Cart.create
	    @cart_1.add(@cart_1)
	  
	  end
end
