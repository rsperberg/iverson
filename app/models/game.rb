class Game < ActiveRecord::Base
  belongs_to :team
    def win?
   		status = (score > opponent_score) ?  true :  false
   end
end
