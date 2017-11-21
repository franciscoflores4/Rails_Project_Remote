class AddJerseyRefToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :jerseys, :order, foreign_key: true
  end
end
