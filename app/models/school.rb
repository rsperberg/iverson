class School < ActiveRecord::Base
  has_many :teams

  def self.search(search)
  	a=find(:all, :conditions => ['name LIKE ? OR state like ? OR city like ?', "%#{search}%","%#{search}%","%#{search}%"])	
  	end
end
