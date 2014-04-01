class KrossoverGame
  attr_accessor :ko_game_id, :game_date, :ko_team_id, :team_name, :logo, :score,
    :opponent_name, :opponent_score, :video, :title, :summary

  def initialize(game)
    set_attributes(game)
  end

  private

  def set_attributes(game)
    @ko_game_id = ko_data["id"]
    @game_date = ko_data["date"]
    @ko_team_id = ko_data["team"][0]["id"]
    @team_name = ko_data["team"][0]["name"]
    @logo = ko_data["team"][0]["logo"]
    @score = ko_data["team"][0]["score"]
    @opponent_score = ko_data["team"][1]["score"]
    @opponent_name = ko_data["team"][1]["name"]
    @video = ko_data["video"]["streamingURL"]["videoServer"]
  end
end
