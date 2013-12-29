require_relative 'zellers_congruence'
require_relative 'month'

class Year
  def initialize year
    raise RangeError if year < 1800 || year > 3000
    @year = year
  end

  def print
    month1 = Month.new(1, @year)
    month_ary1 = month1.month_string
    ary1 = month_ary1.split("\n")
    ary1.insert(0, "January".center(20))
    ary1.insert(1, "Su Mo Tu We Th Fr Sa")
    last_week = ary1[6]
    until last_week.size == 20 do
      x = "   "
      last_week = last_week + x
    end
    ary1[6].replace(last_week)

    month2 = Month.new(2, @year)
    month_ary2 = month2.month_string
    ary2 = month_ary2.split("\n")
    ary2.insert(0, "February".center(20))
    ary2.insert(1, "Su Mo Tu We Th Fr Sa")
    last_week2 = ary2[6]
    until last_week2.size == 20 do
      x = "   "
      last_week2 = last_week2 + x
    end
    ary2[6].replace(last_week2)

    month3 = Month.new(3, @year)
    month_ary3 = month3.month_string
    ary3 = month_ary3.split("\n")
    ary3.insert(0, "March".center(20))
    ary3.insert(1, "Su Mo Tu We Th Fr Sa")

    puts "#{@year}".center(62).rstrip
    puts
    puts ary1[0] + "  " + ary2[0] + "  " + ary3[0].rstrip
    puts ary1[1] + "  " + ary2[1] + "  " + ary3[1].rstrip
    puts ary1[2] + "  " + ary2[2] + "  " + ary3[2].rstrip
    puts ary1[3] + "  " + ary2[3] + "  " + ary3[3].rstrip
    puts ary1[4] + "  " + ary2[4] + "  " + ary3[4].rstrip
    puts ary1[5] + "  " + ary2[5] + "  " + ary3[5].rstrip
    puts ary1[6] + "  " + ary2[6] + "  " + ary3[6].rstrip
    puts
  end
end

# Each month is its own array and each line of the month is its own array index!!