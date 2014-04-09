class Team < ActiveRecord::Base
  has_many :games
  belongs_to :school
   def self.search(search)
  	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])	
  	end
end
