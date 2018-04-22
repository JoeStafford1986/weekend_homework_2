require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1")
  end

  def test_can_create_room()
    assert_equal(Room, @room.class())
  end

  def test_get_name
    assert_equal("Room 1", @room.name())
  end
end
