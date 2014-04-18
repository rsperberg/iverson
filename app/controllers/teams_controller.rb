class TeamsController < ApplicationController
	def index
		@teams = Team.find(:all, :order => 'name')
	end

	def show
		@team = Team.find(params[:id])
	end
end
