class FoodFacade
  def self.foods_by_keyword(keyword)
    foods_results = FoodService.foods_by_keyword(keyword)
    x = foods_results[:foods].map do |food_result|
      Food.new(food_result)
    end
    total_hits, foods = [foods_results[:totalHits], x]
  end
end
