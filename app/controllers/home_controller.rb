class HomeController < ApplicationController
	def index
		# @date = Date.yesterday
		@date = "03/04/2014"
		if Game.where(["date LIKE :tag", {:tag => @date}]).count > 100
			@game =  Game.where(["date LIKE :tag", {:tag => @date}]).first(100) 
		else
			@game = Game.all.first(100).reverse
		end
	end
end
