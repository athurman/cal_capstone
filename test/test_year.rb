require 'year'
require_relative 'helper'

class TestYearClass < MiniTest::Unit::TestCase
  def test_year_class_exists
    year = Year.new(2012)
  end
end