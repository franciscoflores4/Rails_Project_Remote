class CreateJerseys < ActiveRecord::Migration[5.1]
  def change
    create_table :jerseys do |t|
      t.decimal :price
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
