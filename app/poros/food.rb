class Food
  attr_reader :upc,
              :description,
              :company,
              :ingredients

  def initialize(attr)
    @upc = attr[:gtinUpc] ? attr[:gtinUpc] : 'No response'
    # @upc = upc_format(attr)
    @description = attr[:description]
    @company = attr[:brandOwner] ? attr[:brandOwner] : 'No response'
    @ingredients = attr[:ingredients] ? attr[:ingredients] : 'No response'
  end

  # def upc_format(attr)
  #   if attr[:gtinUpc]
  #     attr[:gtinUpc]
  #   else
  #     'No response'
  #   end
  # end
end
