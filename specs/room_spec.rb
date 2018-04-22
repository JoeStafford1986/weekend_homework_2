require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1")
    @guest = Guest.new("Joe Stafford")
    @song = Song.new("Bohemian Rhapsody")
  end

  def test_can_create_room()
    assert_equal(Room, @room.class())
  end

  def test_get_name
    assert_equal("Room 1", @room.name())
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

  def test_can_add_song
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
    @room.remove_guest(@room.find_guest_by_name("Jo Stafford"))
    assert_equal(1, @room.occupancy_count())
  end

  def test_remove_guest_from_room__no_guests
    @room.remove_guest(@room.find_guest_by_name("Joe Stafford"))
    assert_equal(0, @room.occupancy_count())
  end
end
