class FoodItem
  attr_reader :upc,
              :description,
              :company,
              :ingredients

  def initialize(attr)
    @upc = attr["gtinUpc"]
    @description = attr["description"]
    @company = attr["brandOwner"]
    @ingredients = attr["ingredients"]
  end
end
