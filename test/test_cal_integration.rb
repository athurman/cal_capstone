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

  def test_year_input_compare_to_cal
    shell_output = `ruby cal.rb 1900`
    expected_output = `cal 1900`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal
    shell_output = `ruby cal.rb 2012`
    expected_output = `cal 2012`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal_1800
    shell_output = `ruby cal.rb 1800`
    expected_output = `cal 1800`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal_1900
    shell_output = `ruby cal.rb 1900`
    expected_output = `cal 1900`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal_2000
    shell_output = `ruby cal.rb 2000`
    expected_output = `cal 2000`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal
    shell_output = `ruby cal.rb 2234`
    expected_output = `cal 2234`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal_3000
    shell_output = `ruby cal.rb 3000`
    expected_output = `cal 3000`
  assert_equal expected_output, shell_output
  end

  def test_year_input_compare_to_cal_2999
    shell_output = `ruby cal.rb 2999`
    expected_output = `cal 2999`
  assert_equal expected_output, shell_output
  end
end