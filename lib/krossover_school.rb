class KrossoverSchool
  attr_accessor :name, :ko_school_id, :logo_url, :city, :state, :country

  def initialize(data)
    set_attributes(data)
  end

  private

  def set_attributes(data)
    @name = data["institution"]["name"]
    @logo_url = data["logo"]
    @ko_school_id = data["institution"]["id"]
    @city = data["institution"]["city"]
    @state = data["institution"]["state"]
    @country = data["institution"]["country"]
  end
end
