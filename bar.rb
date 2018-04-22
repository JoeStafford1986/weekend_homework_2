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

end
