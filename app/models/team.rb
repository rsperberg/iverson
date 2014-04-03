class Team < ActiveRecord::Base
  has_many :games
  belongs_to :school
  
end
