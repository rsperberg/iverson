class School < ActiveRecord::Base
  has_many :teams, :foreign_key => :ko_team_id

  def self.search(search)
  	self.includes(:teams).where("LOWER(schools.name) LIKE ? OR LOWER(state) LIKE ? OR LOWER(city) LIKE ? OR LOWER(teams.name) LIKE?", "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%").references(:teams)
  end
end
