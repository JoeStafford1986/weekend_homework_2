require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1")
    @guest = Guest.new("Joe Stafford")
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
  end
end
