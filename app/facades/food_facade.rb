class FoodFacade
  def self.foods_by_keyword(keyword)
    foods_hash = FoodService.foods_by_keyword(keyword)
    foods_hash[:foods].map do |food_hash|
      FoodItem.new(food_info)
    end
  end
end
