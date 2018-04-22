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

  def check_occupant_class()
    return @occupants[0].class()
  end

  def songlist_count()
    @songlist.length()
  end

  def add_song(song)
    @songlist << song
  end

  def check_song_class()
    return @songlist[0].class()
  end

  def find_guest_by_name(guest_name)
    @occupants.each do |guest|
      if guest.name() == guest_name
        return guest
      end
    end
    return guest = nil
  end

end
