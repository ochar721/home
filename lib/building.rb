class Building
  attr_reader :units

  def initialize
    @units        = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    people_renting = []
    @units.each do |unit|
      if unit.renter != nil
        people_renting << unit.renter.name
      end
    end
    people_renting
  end

  def average_rent
    @units.sum do |unit|
      unit.monthly_rent.to_f / 2
    end
  end

  def rented_units
  @units.find_all do |unit|
    unit.renter
    end
  end

  def renter_with_highest_rent
    rented_units.max_by do |unit|
      unit.monthly_rent
    end.renter
  end

  def units_by_number_of_bedrooms
    units_bedrooms = {}
    @units.each do |unit|
      units_bedrooms[units] = unit.bedrooms
    end
    units_bedrooms
  end
end
