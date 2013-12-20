require 'month'
require_relative 'helper'

class TestMonthClass < MiniTest::Unit::TestCase
  def test_month_class_exists
    month = Month.new(1, 2012)
    month.print
  end

  def test_leap_year_true_false
    feb = Month.new(2, 2012)
    assert_equal(true, feb.is_leapyear?)
  end
end

#test and create leapyear? method for February specifically.