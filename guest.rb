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

  # def make_payment(entry_fee)
  #
  # end
end
