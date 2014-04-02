class GamesController < ApplicationController
  def index 
    @game_stats = Game.all
  end
end
