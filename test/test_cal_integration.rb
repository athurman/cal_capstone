require_relative 'helper'

class TestCheersIntegration < MiniTest::Unit::TestCase
  def test_month_with_first_day_starting_on_sunday
      shell_output = `ruby cal.rb 1 2012`
      expected_output = `cal 1 2012`
  assert_equal expected_output, shell_output
  end

  def test_month_with_first_day_starting_friday_with_6_lines
      shell_output = `ruby cal.rb 3 2013`
      expected_output = `cal 3 2013`
  assert_equal expected_output, shell_output
  end

  def test_feb_during_leap_year
    shell_output = `ruby cal.rb 2 2012`
    expected_output = `cal 2 2012`
  assert_equal expected_output, shell_output
  end

  def test_leap_year_logic
    shell_output = `ruby cal.rb 2 1900`
    expected_output = `cal 2 1900`
  assert_equal expected_output, shell_output
  end

  def test_year_input
    shell_output = `ruby cal.rb 2012`
    expected_output = <<EOS
                             2012

      January               February               March
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7            1  2  3  4               1  2  3
 8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10
15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17
22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24
29 30 31              26 27 28 29           25 26 27 28 29 30 31

EOS
  assert_equal expected_output, shell_output
  end

end

# 1  2  3  4  5  6  7