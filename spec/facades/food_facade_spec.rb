require 'rails_helper'

describe FoodFacade do
  it 'returns an array of searched food object info', :vcr do
    search_results = FoodFacade.foods_by_keyword("sweet potatoe")
    expect(search_results[1]).to be_a Array
    expect(search_results[1].count).to eq(10)

    food_data = search_results[1].first
    expect(food_data.upc).to be_a(String)
    expect(food_data.description).to be_a(String)
    expect(food_data.company).to be_a(String)
    expect(food_data.ingredients).to be_a(String)

    total_hits = search_results[0]
    expect(total_hits).to be_a(Integer)
  end
end
