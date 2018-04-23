require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../drink.rb')
require_relative('../guest.rb')

class BarTest < MiniTest::Test

  def setup
    @guest = Guest.new("Joe Stafford", 20)

    @drink = Drink.new("beer", 1)
    @drink_1 = Drink.new("wine", 2)

    @bar = Bar.new()
  end

  def test_add_stock
    @bar.add_stock(@drink)
    assert_equal(1, @bar.stock_count())
  end

  def test_charge_to_guest_bar_tab
    @bar.add_stock(@drink)
    ordered_drink = @guest.order_drink_by_name("beer")
    delivered_drink = @bar.check_stock(ordered_drink)
    @bar.charge_to_guest_bar_tab(@guest, delivered_drink.price())
    assert_equal(1, @guest.bar_tab())
  end

end
