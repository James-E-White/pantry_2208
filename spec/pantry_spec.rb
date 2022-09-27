require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do
  before (:each) do
     @pantry = Pantry.new
     @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
     @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
     @recipe1 = Recipe.new("Mac and Cheese")
  end

  it 'exists' do
    expect(@pantry).to be_an_instance_of(Pantry)
  end

  it 'has stock of items' do
    expect(@pantry.stock).to eq({})
  end

  it 'can check the pantry for stock' do
    expect(@pantry.stock_check(@ingredient1)).to eq(0)
  end

  it 'can restock items' do
     @pantry.restock(@ingredient1, 5)
     @pantry.restock(@ingredient1, 10)
     expect(@pantry.stock_check(@ingredient1)).to eq(15)
     @pantry.restock(@ingredient2, 7)
     expect(@pantry.stock_check(@ingredient2)).to eq(7)
  end

  it 'can check if it has enough ingredients for a recipe' do
      @pantry.restock(@ingredient1, 5)
      @pantry.restock(@ingredient1, 10)
      expect(@pantry.enough_ingredients_for?(@recipe1)).to be(false)
   end
end
