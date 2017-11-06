class AddTeamRefToJerseys < ActiveRecord::Migration[5.1]
  def change
    add_reference :jerseys, :team, foreign_key: true
  end
end
