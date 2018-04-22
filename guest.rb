class Guest

  attr_reader(:name, :total_cash)

  def initialize(name, total_cash)
    @name = name
    @total_cash = total_cash
  end

end
