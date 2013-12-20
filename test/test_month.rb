require 'month'
require_relative 'helper'

class TestMonthClass < MiniTest::Unit::TestCase
  def test_month_class_exists
    month = Month.new
    month.print(1, 2012)
  end
end

#test and create leapyear? method for February specifically.