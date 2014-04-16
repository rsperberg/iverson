class KrossoverTeam
  attr_accessor :school_id, :ko_team_id, :name

  def initialize(data)
    set_attributes(data)
  end

  private

  def set_attributes(data)
    @school_id = data["institution"]["id"] unless data["institution"].nil?
    @ko_team_id = data["id"]
    @name = data["name"]
  end
end