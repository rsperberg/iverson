class Team < ActiveRecord::Base
  has_many :games
  belongs_to :school
  
   def win?(home_score, opponent_score)
   		status = (home_score > opponent_score) ?  true :  false
   end
end
