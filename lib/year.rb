require_relative 'zellers_congruence'
require_relative 'month'

class Year
  def initialize year
    raise RangeError if year < 1800 || year > 3000
    @year = year
  end

  def print
    puts "#{@year}".center(62).rstrip
    puts
    month1 = Month.new(1, @year)
    month_ary = month1.month_string
    ary = month_ary.split("\n")

  end
end

# Each month is its own array and each line of the month is its own array index!!