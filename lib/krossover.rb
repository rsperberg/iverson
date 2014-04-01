require 'httparty'
class Krossover
  def initialize
    #get_ko_data
   # build_games(get_ko_data)
  end


  def build_games(ko_data)
    ko_data.each do |game|
      ko_game = KrossoverGame.new(game)
      local_game = Game.first_or_initialize()
      if local_game.save
        ns = NarrativeScience.new(game_id)
        ko_game.title = ns.title
        ko_game.summary = ns.summary
      end
    end
  end

  def get_ko_data
    ko_data = HTTParty.get('http://www.krossover.com/intelligence/feed/games',
                :basic_auth => { :username => "SINY",
                                 :password => "RSD72aH1uBlIdcX"})
    JSON.parse(ko_data)
  end
end

a = Krossover.new
puts a.get_ko_data
