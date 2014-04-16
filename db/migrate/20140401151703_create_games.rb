class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :ko_game_id
      t.integer :score
      t.boolean :is_home
      t.text :summary
      t.string :video_url
      t.string :date
      t.integer :team_id
      t.integer :opponent_score
      t.integer :opponent_id
      t.timestamps
    end
  end
end
