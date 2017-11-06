class AddJerseyRefToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :jersey, foreign_key: true
  end
end
