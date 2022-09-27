require './lib/ingredient'
require './lib/pantry'

RSpec.describe Ingredient do
  before (:each) do
     @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
     @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
     @recipe1 = Recipe.new("Mac and Cheese")
  end

  it 'exists' do
    expect(@ingredient1).to be_an_instance_of(Ingredient)
  end

  it 'has readable attributes' do
    expect(@ingredient1.name).to eq("Cheese")
    expect(@ingredient1.unit).to eq("oz")
    expect(@ingredient1.calories).to eq(50)
  end
end
