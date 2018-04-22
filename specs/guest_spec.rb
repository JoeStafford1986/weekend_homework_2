require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup
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

end
