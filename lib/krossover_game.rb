require 'pry'
class KrossoverGame
  attr_accessor :ko_game_id, :date, :team_id, :team_name, :logo, :score,
    :opponent_name, :opponent_score, :video_url, :title, :summary, :boxscore, :opponent_boxscore, :is_home

  def initialize(game)
    set_attributes(game)
  end

  private

  def set_attributes(game)
    ko_team = game["teams"][0]
    opponent_team = game["teams"][1]

    # binding.pry
    @is_home = ko_team["isHomeTeam"]
    @ko_game_id = game["id"]
    @date = game["date"]
    @opponent_id = opponent_team["id"]
    @opponent_name = opponent_team["name"]
    @video_url = game["video"]["streamingUrl"]

    if ko_team["boxScore"].nil?
      @score = ko_team["score"]
    else
      @score = ko_team["boxScore"]["sPTS"]
    end

    if opponent_team["boxScore"].nil?
      @opponent_score = opponent_team["score"]
    else
      @opponent_score = opponent_team["boxScore"]["sPTS"]
    end

  end

  # def set_score(team)
  #   ko_boxscore = team["boxScore"]["sPTS"]
  #   coach_score = team["score"]

  #   if ko_boxscore.nil?
  #     coach_score
  #   else
  #     ko_box_score
  #   end
  # end

end
