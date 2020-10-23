require 'rails_helper'

RSpec.describe FoodService do
  context "instance methods" do
    context "#foods_by_keyword" do
      it "returns food by keyword", :vcr do
        keyword = 'sweet potatoes'
        food = FoodService.foods_by_keyword(keyword)
        expect(food).to have_key(:foods)
        expect(food[:foods]).to be_an(Array)
        food_info = food[:foods].first
        
        expect(food_info).to have_key(:gtinUpc)
        expect(food_info[:gtinUpc]).to be_a(String)

        expect(food_info).to have_key(:description)
        expect(food_info[:description]).to be_a(String)

        expect(food_info).to have_key(:brandOwner)
        expect(food_info[:brandOwner]).to be_a(String)

        expect(food_info).to have_key(:ingredients)
        expect(food_info[:ingredients]).to be_a(String)
      end
    end
  end
end
