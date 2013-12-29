require_relative 'zellers_congruence'

class Month
  attr_reader :month_array
  attr_reader :month_string

  def format_first_day first_day, month_array
    first_day.times do |x|
      x = "   "
      month_array.push(x)
    end
  end

  def is_leapyear?
    if @year % 100 == 0 && @year % 4 == 0
      @year % 400 == 0
    elsif !(@year % 100 == 0) && !(@year % 400 == 0)
      @year % 4 == 0
    end
  end

  def format_days_in_month month, month_array
    amt_of_days_in_months = {1 => 31, 2 => 28, 3 => 31, 4 => 30,
                           5 => 31, 6 => 30, 7 => 31, 8 => 31,
                           9 => 30, 10 => 31, 11 => 30, 12 => 31}
    if self.is_leapyear? && month == 2
      days_in_month = 29
    else
      days_in_month = amt_of_days_in_months[month]
    end
    i = 1
    while i <= days_in_month
      if i < 10
        space = " "
      else
        space = ""
      end
      day = space + i.to_s + " "
      month_array.push(day)
      i += 1
    end
  end

  def insert_week_line_breaks month_array
    amt_of_days_in_a_week = 7

    j = amt_of_days_in_a_week
    while j < month_array.length
      month_array[j -1] = month_array[j -1].rstrip
      month_array.insert(j, "\n")
      j += 8
    end
  end

  def initialize month, year
    @month = month
    @year = year
    first_day_of_the_month = ZellersCongruence.calculate(@month, @year)
    month_array = []
    format_first_day(first_day_of_the_month, month_array)
    format_days_in_month(@month, month_array)
    month_array[month_array.length - 1] = month_array[month_array.length - 1].rstrip
    insert_week_line_breaks(month_array)
    @month_array = month_array
    @month_string = @month_array.join
  end

  def print
    month_names = {1 => "January", 2 => "February", 3 => "March", 4 => "April",
                 5 => "May", 6 => "June", 7 => "July", 8 => "August",
                 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
    puts "#{month_names[@month]} #{@year}".center(20).rstrip
    puts "Su Mo Tu We Th Fr Sa"
    puts @month_string
    puts "\n" if @month_array.length < 40
  end

end

# Raise NameError if month name is not included in Hash