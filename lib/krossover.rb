require 'httparty'
class Krossover
  attr_accessor :title, :paragraph
  def initialize()
    get_data
  end

  def get_data
    HTTParty.post('https://api.narrativescience.com/v3/single/Krossover/KrossoverBasketballGameRecap',
                             :basic_auth => {:username => ENV['NARRATIVE_KEY'], :password => ENV['NARRATIVE_SECRET']},
                             :headers => {"Content-Type" => "application/json"},
                             :body => {"data" => {"game_id"=> 103000,
                                                  "username"=> ENV['NARRATIVE_BODY_KEY'],
                                                  "password"=> ENV['NARRATIVE_BODY_SECRET']},
                                       "context"=> {"game_id"=> 103000}
                                      }.to_json
                            )
  end

  def data
    JSON.parse(get_data.body)
  end

  def title
     data["response"]["title"]
  end

  def paragraph
    data["response"]["paragraphs"]
  end
end

game = Krossover.new

puts game.title
puts game.paragraph
