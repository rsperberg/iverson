class SchoolController < ApplicationController
	helper :all
	
	def index
		@school = School.find(params[:id])
		#@school_image = grab_image("#{@school.name}")
	end
end
