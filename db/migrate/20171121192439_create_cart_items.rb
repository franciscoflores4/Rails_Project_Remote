class CreateCartItems < ActiveRecord::Migration[5.1]
  def self.up
    create_table :cart_items do |t|
      t.column :jersey_id, :integer
      t.column :cart_id, :integer
      t.column :price, :float
      t.column :qty, :integer
      t.column :created_at, :datetime
    end
  end 
  def self.down
    drop_table :cart_items
  end
end
