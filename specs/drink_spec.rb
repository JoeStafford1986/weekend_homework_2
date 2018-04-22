require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest

  def setup
    @drink = Drink.new("beer", 1)
  end

end
