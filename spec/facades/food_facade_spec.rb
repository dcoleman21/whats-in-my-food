require 'rails_helper'

describe FoodFacade do
  it 'returns an array of searched food object info', :vcr do
    search_results = FoodFacade.foods_by_keyword("sweet potatoe")
    expect(search_results).to be_a Array
    expect(search_results.count).to eq(10)

    foods = search_results.first
    expect(foods.upc).to be_a(String)
    expect(foods.description).to be_a(String)
    expect(foods.company).to be_a(String)
    expect(foods.ingredients).to be_a(String)
  end
end
