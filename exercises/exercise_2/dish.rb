class Dish
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def description
    "#{@name} costs #{@price}."
  end
end
