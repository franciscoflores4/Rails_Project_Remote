class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :jersey
  acts_as_shopping_cart_using :cart

def add(product)
  @product = Jersey.find(params[:id])
  @quantity = 1
end
end
