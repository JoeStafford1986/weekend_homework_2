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
    return if guest.check_can_afford(@entry_fee) == false
    take_payment()
    guest.make_payment(@entry_fee)
    @occupants << guest
  end

  def check_occupant_class()
    return @occupants[0].class()
  end

  def songlist_count()
    return @songlist.length()
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

  def take_payment()
    @total_cash += entry_fee
  end

  # def take_payment_of_bar_tab(guest)
  #
  # end

end
