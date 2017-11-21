class Cart < ApplicationRecord
  has_many :cart_items
  has_many :jerseys, :through => :cart_items
  acts_as_shopping_cart_using :cart_item

  def add(product)
	 @item = CartItem.new
	 @item.add(@product)
  end
end
