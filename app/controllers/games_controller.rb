class GamesController < ApplicationController
  def index 
    @game_stats = Game.find(params[:id])
   # @team_stats = Team.find(params[:id])
  end
  
  
end
