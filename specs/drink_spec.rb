require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("beer", 1)
  end

  def test_get_name
    assert_equal("beer", @drink.name())
  end

  def test_get_price
    assert_equal(1, @drink.price())
  end

end
