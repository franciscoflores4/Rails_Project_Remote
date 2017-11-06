class CreateJerseys < ActiveRecord::Migration[5.1]
  def change
    create_table :jerseys do |t|
      t.decimal :price
      t.char :size
      t.integer :stock_quantity
      t.text :description

      t.timestamps
    end
  end
end
