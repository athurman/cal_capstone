require 'year'
require_relative 'helper'

class TestYearClass < MiniTest::Unit::TestCase
  def test_year_class_exists
    year = Year.new(2012)
  end

  def test_year_out_of_range
    assert_raises RangeError do
      Year.new(3002)
    end
  end

  def test_year_out_of_range_lower
    assert_raises RangeError do
      Year.new(1782)
    end
  end
end