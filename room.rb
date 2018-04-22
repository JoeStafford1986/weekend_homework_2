class Room

  attr_reader(:name)

  def initialize(name)
    @name = name
    @occupants = []
    @songlist = []
  end

  def occupancy_count
    return @occupants.length()
  end

end
