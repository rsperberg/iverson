class School < ActiveRecord::Base
  has_many :teams

   def win?(home_score, opponent_score)
   		home_score >= opponent_score ? status = "text-success" : status = "text-warning"
   end
end
