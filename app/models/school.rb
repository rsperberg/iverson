class School < ActiveRecord::Base
  has_many :teams

  def self.search(search)	
  	#query = "SELECT * FROM schools WHERE (schools.name LIKE '%#{search}%' OR schools.state like '%#{search}%' OR schools.city like '%#{search}%')"
  	#School.find_by_sql(query)
  	  
  	self.includes(:teams).where("schools.name LIKE ? OR state LIKE ? OR city LIKE ? OR teams.name LIKE?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%").references(:teams)
  	end
end
