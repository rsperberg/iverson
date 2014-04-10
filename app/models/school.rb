class School < ActiveRecord::Base
  has_many :teams

  def self.search(search)	 
  	self.includes(:teams).where("schools.name LIKE ? OR state LIKE ? OR city LIKE ? OR teams.name LIKE?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%").references(:teams)
  	end
end
