class Game < ActiveRecord::Base
  belongs_to :team, :foreign_key => :ko_team_id
    def win?
   		status = (score > opponent_score) ?  true :  false
   end


end
