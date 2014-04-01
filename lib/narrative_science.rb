require 'httparty'
class NarrativeScience
attr_accessor :title, :summary

  def initialize(game_id)
    set_attributes
  end

  private

  def get_data(game_id)
    data = HTTParty.post('https://api.narrativescience.com/v3/single/Krossover/KrossoverBasketballGameRecap',
                         :basic_auth => {:username => ENV['NARRATIVE_KEY'],
                                         :password => ENV['NARRATIVE_SECRET']},
                         :headers => {"Content-Type" => "application/json"},
                         :body => {"data" => {"game_id"=> game_id,
                                              "username"=> ENV['NARRATIVE_BODY_KEY'],
                                              "password"=> ENV['NARRATIVE_BODY_SECRET']},
                                   "context"=> {"game_id"=> game_id}
                                  }.to_json
                        )
    JSON.parse(data.body)
  end

  def set_attributes(game_id)
    get_data(game_id)
    @title = get_data["response"]["title"]
    @summary = get_data["response"]["paragraphs"]
  end
end
