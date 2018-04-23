class Bar

  def initialize
    @stock = []
  end

  def stock_count()
    return @stock.length()
  end

  def add_stock(drink)
    @stock << drink
  end

  def check_stock(drink_name_to_find)
    return nil if (stock_count() == 0)
    @stock.each do |drink|
      if drink.name() == drink_name_to_find
        return drink
      end
    end
    return nil
  end

  def charge_to_guest_bar_tab(guest, price)
    guest.bar_tab += price
  end

end
