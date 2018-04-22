class Guest

  attr_reader(:name, :total_cash)

  def initialize(name, total_cash)
    @name = name
    @total_cash = total_cash
  end

  def check_can_afford(balance_to_pay)
    if total_cash >= balance_to_pay
      return true
    end
    return false
  end

  def make_payment(balance_to_pay)
    return if !check_can_afford(balance_to_pay)
    @total_cash -= balance_to_pay
  end

  #placeholder method for drink order input
  def order_drink_by_name(drink_name)
    return drink_name
  end

end
