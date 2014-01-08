require_relative 'zellers_congruence'
require_relative 'month'

class Year
  def initialize year
    raise RangeError if year < 1800 || year > 3000
    @year = year
  end

  def create_month_array month
    month_names = {1 => "January", 2 => "February", 3 => "March", 4 => "April",
                   5 => "May", 6 => "June", 7 => "July", 8 => "August",
                   9 => "September", 10 => "October", 11 => "November", 12 => "December"}
    new_month = Month.new(month, @year)
    month_ary = new_month.month_string
    ary = month_ary.split("\n")
    ary.insert(0, month_names[month].center(20))
    ary.insert(1, "Su Mo Tu We Th Fr Sa")
    if ary.length < 8
      if ary.length == 6
        last_week = ary[5]
      else
        last_week = ary[6]
      end
      until last_week.size == 20 do
        x = "   "
        last_week = last_week + x
      end
      if ary.length == 6
        ary[5].replace(last_week)
      elsif ary.length == 7
        ary[6].replace(last_week)
      end

      end_of_month = "  "
      until end_of_month.size == 20 do
        x = "  "
        end_of_month = end_of_month + x
      end
      ary.push(end_of_month)
      if ary.length == 7
        ary.push(end_of_month)
      end
    else
      last_week = ary[7]
      until last_week.size == 20 do
        x = "   "
        last_week = last_week + x
      end
      ary[7].replace(last_week)
    end

    return ary
  end

  def print
    january_ary = create_month_array(1)
    february_ary = create_month_array(2)
    march_ary = create_month_array(3)
    april_ary = create_month_array(4)
    may_ary = create_month_array(5)
    june_ary = create_month_array(6)
    july_ary = create_month_array(7)
    august_ary = create_month_array(8)
    september_ary = create_month_array(9)
    october_ary = create_month_array(10)
    november_ary = create_month_array(11)
    december_ary = create_month_array(12)

    puts "#{@year}".center(62).rstrip
    puts
    puts january_ary[0] + "  " + february_ary[0] + "  " + march_ary[0].rstrip
    puts january_ary[1] + "  " + february_ary[1] + "  " + march_ary[1].rstrip
    puts january_ary[2] + "  " + february_ary[2] + "  " + march_ary[2].rstrip
    puts january_ary[3] + "  " + february_ary[3] + "  " + march_ary[3].rstrip
    puts january_ary[4] + "  " + february_ary[4] + "  " + march_ary[4].rstrip
    puts january_ary[5] + "  " + february_ary[5] + "  " + march_ary[5].rstrip
    puts january_ary[6] + "  " + february_ary[6] + "  " + march_ary[6].rstrip
    puts january_ary[7] + "  " + february_ary[7] + "  " + march_ary[7].rstrip
    puts april_ary[0] + "  " + may_ary[0] + "  " + june_ary[0].rstrip
    puts april_ary[1] + "  " + may_ary[1] + "  " + june_ary[1].rstrip
    puts april_ary[2] + "  " + may_ary[2] + "  " + june_ary[2].rstrip
    puts april_ary[3] + "  " + may_ary[3] + "  " + june_ary[3].rstrip
    puts april_ary[4] + "  " + may_ary[4] + "  " + june_ary[4].rstrip
    puts april_ary[5] + "  " + may_ary[5] + "  " + june_ary[5].rstrip
    puts april_ary[6] + "  " + may_ary[6] + "  " + june_ary[6].rstrip
    puts april_ary[7] + "  " + may_ary[7] + "  " + june_ary[7].rstrip
    puts july_ary[0] + "  " + august_ary[0] + "  " + september_ary[0].rstrip
    puts july_ary[1] + "  " + august_ary[1] + "  " + september_ary[1].rstrip
    puts july_ary[2] + "  " + august_ary[2] + "  " + september_ary[2].rstrip
    puts july_ary[3] + "  " + august_ary[3] + "  " + september_ary[3].rstrip
    puts july_ary[4] + "  " + august_ary[4] + "  " + september_ary[4].rstrip
    puts july_ary[5] + "  " + august_ary[5] + "  " + september_ary[5].rstrip
    puts july_ary[6] + "  " + august_ary[6] + "  " + september_ary[6].rstrip
    puts july_ary[7] + "  " + august_ary[7] + "  " + september_ary[7].rstrip
    puts october_ary[0] + "  " + november_ary[0] + "  " + december_ary[0].rstrip
    puts october_ary[1] + "  " + november_ary[1] + "  " + december_ary[1].rstrip
    puts october_ary[2] + "  " + november_ary[2] + "  " + december_ary[2].rstrip
    puts october_ary[3] + "  " + november_ary[3] + "  " + december_ary[3].rstrip
    puts october_ary[4] + "  " + november_ary[4] + "  " + december_ary[4].rstrip
    puts october_ary[5] + "  " + november_ary[5] + "  " + december_ary[5].rstrip
    puts october_ary[6] + "  " + november_ary[6] + "  " + december_ary[6].rstrip
    puts october_ary[7] + "  " + november_ary[7] + "  " + december_ary[7].rstrip
  end
end