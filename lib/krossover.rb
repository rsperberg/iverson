require 'httparty'
require 'debugger'
require 'pry'

class Krossover
  # include Game

  def initialize
    get_ko_data
    feed_data(get_ko_data)
  end

  def feed_data(ko_games)
    ko_games.each do |game|
      build_game(game)
    end
  end

  def build_game(data)
    team = data["teams"][0]
    opponent = data["teams"][1]

    ko_school = build_school(team) unless team["institution"].nil?
    ko_team = build_team(team)

    ko_team.update_attribute(:school_id, ko_school.id) unless team["institution"].nil?
    ko_game = KrossoverGame.new(data)


    local_game = Game.where(ko_game.as_json).first_or_initialize()

    if local_game.new_record?
      local_game.team_id = ko_team.id
      #boxscore updates wil nil logic
      if !team["boxScore"].nil?
        local_game.boxscore = team["boxScore"]
      end

      if !opponent["boxScore"].nil?
        local_game.opponent_boxscore = opponent["boxScore"]
      end

      #narrative_science updates
      game_id = local_game.ko_game_id
      ns = NarrativeScience.new(game_id)
      local_game.title = ns.title
      local_game.summary = ns.summary
      local_game.save
    end

  end

  def build_team(data)
    ko_team = KrossoverTeam.new(data)
    Team.where(ko_team.as_json).first_or_create()
  end

  def build_school(data)
    ko_school = KrossoverSchool.new(data)
    School.where(ko_school.as_json).first_or_create()
  end

  def get_ko_data
    ko_data = HTTParty.get('http://www.krossover.com/intelligence/feed/games',
                :basic_auth => { :username => ENV['KROSSOVER_KEY'],
                                 :password => ENV['KROSSOVER_SECRET']})
    JSON.parse(ko_data)
  end

end

a = Krossover.new
puts a.get_ko_data
