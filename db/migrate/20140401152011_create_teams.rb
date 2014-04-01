class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :school_id
      t.integer :ko_team_id
      t.string :name

      t.timestamps
    end
  end
end
