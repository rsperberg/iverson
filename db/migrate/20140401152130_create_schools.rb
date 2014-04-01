class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :ko_school_id
      t.string :logo_url
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
