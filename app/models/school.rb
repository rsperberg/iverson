class School < ActiveRecord::Base
  has_many :teams
  search = search 
  def self.search(search)	 
  	self.includes(:teams).where("schools.name LIKE ? OR state LIKE ? OR city LIKE ? OR teams.name LIKE?", "%#{search || search.capitalize}%","%#{search || search.capitalize}%","%#{search || search.capitalize}%","%#{search || search.capitalize}%").references(:teams)
  	end
end
