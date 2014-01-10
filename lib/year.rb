require_relative 'zellers_congruence'
require_relative 'month'

class Year
  def initialize year
    raise RangeError if year < 1800 || year > 3000
    @year = year
  end

  def format_empty_line last_line, insert_empty_chars
    empty_line_chars = 20
    until last_line.size == empty_line_chars do
      last_line = last_line + insert_empty_chars
    end
    last_line
  end

  def format_last_line_in_month month_array
    end_of_month = "  "
    empty_chars = "  "
    end_of_month = format_empty_line(end_of_month, empty_chars)
    month_array.push(end_of_month)
  end

  def create_month_array month
    num_of_month_rows = 8
    empty_chars = "   "
    new_month = Month.new(month, @year)
    month_ary = new_month.month_string.split("\n")
    month_ary.insert(0, new_month.month_names[month].center(20))
    month_ary.insert(1, "Su Mo Tu We Th Fr Sa")
    last_week = format_empty_line(month_ary.last, empty_chars)
    month_ary.last.replace(last_week)
    until month_ary.length == num_of_month_rows
      format_last_line_in_month(month_ary)
    end
    month_ary
  end

  def print
    total_num_month_rows = 8
    puts "#{@year}".center(62).rstrip
    puts
    all_months = (1..12).each_with_object([]) do |month, year|
      year << create_month_array(month)
    end
    all_months.each_slice(3) do |quarter|
      total_num_month_rows.times do |i|
        puts [quarter[0][i], quarter[1][i], quarter[2][i].rstrip].join("  ")
      end
    end
  end
end