require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../drink.rb')

class BarTest < MiniTest::Test

  def setup
    @drink = Drink.new("beer", 1)
    @drink_1 = Drink.new("wine", 2)

    @bar = Bar.new()
  end

  def test_add_stock
    @bar.add_stock(@drink)
    assert_equal(1, @bar.stock_count())
  end

end