class Team < ActiveRecord::Base
  has_many :games, :foreign_key => :ko_game_id
  belongs_to :school, :foreign_key => :ko_school_id
end
