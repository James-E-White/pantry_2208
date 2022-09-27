class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    #stock maps over each ingredient + amount
    @stock.map do |ingredient, amount|
      require "pry";binding.pry
        if stock
        return false
         else
          return true
        end
      end
    end
end
