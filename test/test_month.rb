require 'month'
require_relative 'helper'

class TestMonthClass < MiniTest::Unit::TestCase
  def test_month_class_exists
    month = Month.new
  end
end