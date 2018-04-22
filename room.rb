class Room

  attr_reader(:name, :occupancy_limit, :entry_fee, :total_cash)

  def initialize(name, occupancy_limit, entry_fee)
    @name = name
    @occupancy_limit = occupancy_limit
    @entry_fee = entry_fee
    @total_cash = 0
    @occupants = []
    @songlist = []
  end

  def occupancy_count()
    return @occupants.length()
  end

  def add_guest(guest)
    return if occupancy_count() == @occupancy_limit
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

  def remove_guest(guest_to_remove)
    @occupants.delete(guest_to_remove)
  end

end
