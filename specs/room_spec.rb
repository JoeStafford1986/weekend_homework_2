require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1", 3, 10)

    @song = Song.new("Bohemian Rhapsody")

    @guest = Guest.new("Joe Stafford", 20)
    @guest_1 = Guest.new("John Stafford", 20)
    @guest_2 = Guest.new("Joseph Stafford", 20)
    @guest_3 = Guest.new("Jo Stafford", 20)
  end

  def test_can_create_room()
    assert_equal(Room, @room.class())
  end

  def test_get_name
    assert_equal("Room 1", @room.name())
  end

  def test_get_entry_fee
    assert_equal(10, @room.entry_fee())
  end

  def test_get_total_cash
    assert_equal(0, @room.total_cash())
  end

  def test_get_occupancy__empty
    assert_equal(0, @room.occupancy_count())
  end

  def test_can_add_guest
    @room.add_guest(@guest)
    assert_equal(1, @room.occupancy_count())
    assert_equal(Guest, @room.check_occupant_class())
  end

  def test_get_songlist__empty
    assert_equal(0, @room.songlist_count())
  end

  def test_add_song
    @room.add_song(@song)
    assert_equal(1, @room.songlist_count())
    assert_equal(Song, @room.check_song_class())
  end

  def test_can_find_guest_by_name__guest_found
    @room.add_guest(@guest)
    assert_equal(@guest, @room.find_guest_by_name("Joe Stafford"))
  end

  def test_can_find_guest_by_name__guest_not_found
    @room.add_guest(@guest)
    assert_nil(nil, @room.find_guest_by_name("Jo Stafford"))
  end

  def test_can_find_guest_by_name__no_guests
    assert_nil(nil, @room.find_guest_by_name("Joe Stafford"))
  end

  def test_remove_guest_from_room__guest_found
    @room.add_guest(@guest)
    @room.remove_guest(@room.find_guest_by_name("Joe Stafford"))
    assert_equal(0, @room.occupancy_count())
  end

  def test_remove_guest_from_room__guest_not_found
    @room.add_guest(@guest)
    @room.remove_guest(@room.find_guest_by_name("Joseph Stafford"))
    assert_equal(1, @room.occupancy_count())
  end

  def test_remove_guest_from_room__no_guests
    @room.remove_guest(@room.find_guest_by_name("Joe Stafford"))
    assert_equal(0, @room.occupancy_count())
  end

  def test_fill_room_to_limit
    @room.add_guest(@guest)
    @room.add_guest(@guest_1)
    @room.add_guest(@guest_2)
    @room.add_guest(@guest_3)
    assert_equal(3, @room.occupancy_count())
  end

  def test_take_payment
    @room.add_guest(@guest)
    assert_equal(10, @room.total_cash())
    assert_equal(10, @guest.total_cash())
  end

end
