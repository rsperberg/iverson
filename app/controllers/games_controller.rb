class GamesController < ApplicationController
  def show 
    @game_stats = Game.find(params[:id])
  end
end
