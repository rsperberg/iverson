class Game < ActiveRecord::Base
  belongs_to :team
  # serialize :boxscore
  # serialize :opponent_boxscore

    def win?
   		status = (score > opponent_score) ?  true :  false
   end


end
