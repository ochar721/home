require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test

  def setup
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @renter1 = Renter.new("Jessie")
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Apartment, @unit1
    assert_equal "A1", @unit1.number
    assert_equal 1200, @unit1.monthly_rent
    assert_equal 1, @unit1.bathrooms
    assert_equal 1, @unit1.bedrooms
  end

  def test_it_starts_with_no_renters
    assert_nil nil, @unit1.renter
  end

  def test_it_can_add_renters
    @unit1.add_renter(@renter1)
    assert_equal @renter1, @unit1.renter
  end
end
