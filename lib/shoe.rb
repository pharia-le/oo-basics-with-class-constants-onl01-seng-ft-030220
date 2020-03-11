require 'pry'

class Shoe
  
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []
  
  def initialize(brand)
    self.brand=(brand)
    @brand = brand
    # can remove self.brand=(brand) & def brand=(brand) if we add BRANDS << BRAND here. Otherwise method brand= is not being invoked
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end
  
end