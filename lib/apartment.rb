class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms
  attr_accessor :renter

  def initialize(info)
    @number       = info[:number]
    @monthly_rent = info[:monthly_rent]
    @bathrooms    = info[:bathrooms]
    @bedrooms     = info[:bedrooms]
    @renter       = info[:renter]
  end

  def add_renter(renter)
    @renter = renter
  end
end
