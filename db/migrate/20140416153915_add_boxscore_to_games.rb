class AddBoxscoreToGames < ActiveRecord::Migration
  def change
    add_column :games, :boxscore, :hstore
    add_column :games, :opponent_boxscore, :hstore
  end
end
