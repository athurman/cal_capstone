require_relative 'zellers_congruence'

class Month

  def initialize month, year
    @month = month
    @year = year
  end

  def is_leapyear?
    if @year % 100 == 0 && @year % 4 == 0
      @year % 400 == 0
    elsif !(@year % 100 == 0) && !(@year % 400 == 0)
      @year % 4 == 0
    end
  end

  def format_first_day until_first_day, month_array
    until_first_day.times do |x|
      x = "   "
      month_array.push(x)
    end
    month_array
  end

  def format_days_in_month month, month_array
    amt_of_days_in_months = {1 => 31, 2 => 28, 3 => 31, 4 => 30,
                           5 => 31, 6 => 30, 7 => 31, 8 => 31,
                           9 => 30, 10 => 31, 11 => 30, 12 => 31}
    february = 2
    if self.is_leapyear? && month == february
      days_in_month = 29
    else
      days_in_month = amt_of_days_in_months[month]
    end
    i = 1
    days_in_month.times do
      if i < 10
        space = " "
      else
        space = ""
      end
      day = space + i.to_s + " "
      month_array.push(day)
      i += 1
    end
    month_array
  end

  def insert_week_line_breaks month_array
    amt_of_days_in_a_week = 7
    i = amt_of_days_in_a_week
    while i < month_array.length
      month_array[i -1].rstrip!
      month_array.insert(i, "\n")
      i += 8
    end
    month_array
  end

  def month_names
    {1 => "January", 2 => "February", 3 => "March", 4 => "April",
     5 => "May", 6 => "June", 7 => "July", 8 => "August",
     9 => "September", 10 => "October", 11 => "November", 12 => "December"}
  end

  def month_array
    first_day_of_the_month = ZellersCongruence.calculate(@month, @year)
    array = format_first_day(first_day_of_the_month, [])
    new_array = format_days_in_month(@month, array)
    new_array[new_array.length - 1].rstrip!
    insert_week_line_breaks(new_array)
  end

  def month_string
    month_array.join
  end

  def print
    puts "#{month_names[@month]} #{@year}".center(20).rstrip
    puts "Su Mo Tu We Th Fr Sa"
    puts month_string
    puts "\n" if month_array.length < 40
    puts "\n" if month_array.length == 31
  end
end