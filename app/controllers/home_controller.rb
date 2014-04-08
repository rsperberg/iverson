class HomeController < ApplicationController
	def index
		@game = Game.all
	end
end
