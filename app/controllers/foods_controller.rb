class FoodsController < ApplicationController
  def index
    results = FoodFacade.foods_by_keyword(params[:foods])
    @foods      = results[1]
    @total_hits = results[0]
  end
end
