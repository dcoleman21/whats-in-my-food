require 'rails_helper'

RSpec.describe Food do
  it "can create object based on hash", :vcr do
    food_info = {
        gtinUpc: '070560951975',
        description:"SWEET POTATOES",
        brandOwner: "The Pictsweet Company",
        ingredients: "SWEET POTATOES."
    }

    food = Food.new(food_info)
    expect(food).to be_a Food
    expect(food.upc).to eq("070560951975")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.company).to eq("The Pictsweet Company")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
