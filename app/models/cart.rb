class Cart < ApplicationRecord
  has_many :cart_items
  has_many :jerseys, :through => :cart_items
  acts_as_shopping_cart

  def initialize(session)
  	@cart = Cart.find(session[:cart_id])
  rescue  ActiveRecord::RecordNotFound
  	session[:cart_id] = @cart.id
  	@cart = Cart.create
  end

  def add(jersey_id)
    current_item = jersey.find_by(jersey_id: jersey_id)
    if current_item
        current_item.quantity += 1
    else
        current_item = jersey.build(product_id: jersey_id)
    end
	    
current_item
	end
	def taxes
    (subtotal - 10) * 8.3
  end

  def tax_pct
    3.5
  end

	def total_price
	    jersey.to_a.sum { |j| j.total_price }
	end

	def shipping_cost
    5 # defines a flat $5 rate
  end
end
