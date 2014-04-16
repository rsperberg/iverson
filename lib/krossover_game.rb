class KrossoverGame
  attr_accessor :ko_game_id, :date, :team_id, :team_name, :logo, :score,
    :opponent_name, :opponent_score, :video_url, :title, :summary

  def initialize(game)
    set_attributes(game)
  end

  private

  def set_attributes(game)
    @ko_game_id = game["id"]
    @date = game["date"]
    @team_id = game["teams"][0]["id"]
    @opponent_id = game["teams"][1]["id"]
    @opponent_score = game["teams"][1]["score"]
    @video_url = game["video"]["streamingUrl"]
    set_score(game)
  end

  def set_score(game)
    @score = game["boxScore"]["sPTS"].nil? game["score"] : game["boxScore"]["sPTS"]
  end

end
