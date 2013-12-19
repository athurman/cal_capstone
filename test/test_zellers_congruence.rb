require 'zellers_congruence'
require_relative 'helper'

class TestZellersCongruence < MiniTest::Unit::TestCase
  def test_zellers_congruence_has_a_calculate_method
    ZellersCongruence.calculate("12", "2014")
  end

  def test_zellers_congruence_output
    year = ZellersCongruence.calculate("12", "2013")
    assert_equal(year, "Calendar Date is 12 2013")
  end
end