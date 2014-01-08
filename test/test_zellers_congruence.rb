require 'zellers_congruence'
require_relative 'helper'

class TestZellersCongruence < MiniTest::Unit::TestCase
  def test_zellers_congruence_has_a_calculate_method
    ZellersCongruence.calculate(12, 2014)
  end

  def test_zellers_congruence_output
    first_day_of_december_2013 = ZellersCongruence.calculate(12, 2013)
    assert_equal(0, first_day_of_december_2013)
  end

  def test_zellers_congruence_output_with_decimal_input_test_floor
    first_day_of_march_2012 = ZellersCongruence.calculate(3.9, 2012.34)
    assert_equal(4, first_day_of_march_2012)
  end

  def test_user_input_word_month
    first_day_of_december_2013 = ZellersCongruence.calculate(12, 2013)
    assert_equal(0, first_day_of_december_2013)
  end

  def test_january_first_day_of_month
    first_day_of_january_2012 = ZellersCongruence.calculate(1, 2012)
    assert_equal(0, first_day_of_january_2012)
  end

  def test_february_first_day_of_month
    first_day_of_feb_2012 = ZellersCongruence.calculate(2, 2012)
    assert_equal(3, first_day_of_feb_2012)
  end

  def test_march_after_leap_year
    first_day_of_march_2008 = ZellersCongruence.calculate(3, 2008)
    assert_equal(6, first_day_of_march_2008)
  end

end