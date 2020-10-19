require 'rails_helper'

RSpec.describe FoodItem do
  it "can create object based on hash", :vcr do
    food = FoodItem.new(food_info)
    expect(food).to be_a FoodItem
    expect(food.upc).to eq("070560951975")
    expect(food.descripton).to eq("SWEET POTATOES")
    expect(food.company).to eq("The Pictsweet Company")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
