class Room

  attr_reader(:name)

  def initialize(name)
    @name = name
    @occupants = []
    @songlist = []
  end

  def occupancy_count()
    return @occupants.length()
  end

  def add_guest(guest)
    @occupants << guest
  end

  def check_occupant_type()
    return @occupants[0].class()
  end

  def songlist_count()
    @songlist.length()
  end

end
