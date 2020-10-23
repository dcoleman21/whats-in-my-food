class FoodService
  def self.foods_by_keyword(keyword)
    to_json('/fdc/v1/foods/search', query: keyword)
  end

  private

  def self.to_json(url, params = {})
    response = conn.get(url) do |f|
      f.params = params
      f.params[:pageSize] = 10
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params[:api_key] = ENV['FOOD_DATA_KEY']
    end
  end
end
