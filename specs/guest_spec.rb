require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Joe Stafford")
  end

  def test_can_create_song()
    assert_equal(Guest, @guest.class())
  end

  def test_get_name
    assert_equal("Joe Stafford", @guest.name())
  end

end
