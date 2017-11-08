class AddCategoryRefToJerseys < ActiveRecord::Migration[5.1]
  def change
    add_reference :jerseys, :category, foreign_key: true
  end
end
