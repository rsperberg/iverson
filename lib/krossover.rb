require 'httparty'
require 'debugger'
require 'pry'

class Krossover
  def initialize
    get_ko_data
    feed_data(get_ko_data)
  end

  def feed_data(ko_games)
    ko_games.each do |game|
      build_game(game)
      game["teams"].each do |data|
        build_team(data)
        build_school(data) unless data["institution"].nil?
      end
    end
  end

  def build_games(data)
    ko_game = KrossoverGame.new(data)
    local_game = Game.where(ko_game.as_json).first_or_initialize()

    if local_game != Game.first && local_game.save
      game_id = local_game.ko_game_id
      binding.pry
      ns = NarrativeScience.new(game_id)
      local_game.title = ns.title
      local_game.summary = ns.summary
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
