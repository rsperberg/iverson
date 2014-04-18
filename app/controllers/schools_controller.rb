class SchoolsController < ApplicationController
	helper :all
	
	def search
		@results = School.search(params[:search])
	end
	def index
		@school = School.find(params[:id])
		#@school_image = grab_image("#{@school.name}")
	end
	
	def index
		@schools = School.all
	end
	
	def show
		@school = School.find(params[:id])
	end
end
