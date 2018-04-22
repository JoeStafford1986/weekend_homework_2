require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')

class GuestTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1", 3, 10)
    
    @guest = Guest.new("Joe Stafford", 20)
    @guest_1 = Guest.new("Joe Stafford", 0)
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

  def test_check_can_afford__can_afford
    assert_equal(true, @guest.check_can_afford(@room.entry_fee()))
  end

  def test_check_can_afford__cannot_afford
    assert_equal(false, @guest_1.check_can_afford(@room.entry_fee()))
  end

  def test_make_payment
    @guest.make_payment(@room.entry_fee())
    @guest_1.make_payment(@room.entry_fee())
    assert_equal(10, @guest.total_cash())
    assert_equal(0, @guest_1.total_cash())
  end

end
