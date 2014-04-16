class AddOpponentNameColumnToGames < ActiveRecord::Migration
  def change
    add_column :games, :opponent_name, :string
  end
end
