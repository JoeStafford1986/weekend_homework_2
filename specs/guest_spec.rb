require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')

class GuestTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1", 3, 10)
    @guest = Guest.new("Joe Stafford", 20)
  end

  def test_can_create_guest()
    assert_equal(Guest, @guest.class())
  end

  def test_get_name
    assert_equal("Joe Stafford", @guest.name())
  end

  def test_get_total_cash
    assert_equal(20, @guest.total_cash())
  end

  def test_check_can_afford
    assert_equal(true, @guest.check_can_afford(@room.entry_fee()))
  end

  # def test_make_payment
  #   assert_equal(10, @guest.make_payment(@room.entry_fee()))
  # end

end
