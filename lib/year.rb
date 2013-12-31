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
      last_week = ary[6]
      until last_week.size == 20 do
        x = "   "
        last_week = last_week + x
      end
      ary[6].replace(last_week)
      end_of_month = "  "
      until end_of_month.size == 20 do
        x = "  "
        end_of_month = end_of_month + x
      end
      ary.push(end_of_month)
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
    ary1 = create_month_array(1)
    ary2 = create_month_array(2)
    ary3 = create_month_array(3)
    ary4 = create_month_array(4)
    ary5 = create_month_array(5)
    ary6 = create_month_array(6)
    ary7 = create_month_array(7)
    ary8 = create_month_array(8)
    ary9 = create_month_array(9)
    ary10 = create_month_array(10)
    ary11 = create_month_array(11)
    ary12 = create_month_array(12)

    puts "#{@year}".center(62).rstrip
    puts
    puts ary1[0] + "  " + ary2[0] + "  " + ary3[0].rstrip
    puts ary1[1] + "  " + ary2[1] + "  " + ary3[1].rstrip
    puts ary1[2] + "  " + ary2[2] + "  " + ary3[2].rstrip
    puts ary1[3] + "  " + ary2[3] + "  " + ary3[3].rstrip
    puts ary1[4] + "  " + ary2[4] + "  " + ary3[4].rstrip
    puts ary1[5] + "  " + ary2[5] + "  " + ary3[5].rstrip
    puts ary1[6] + "  " + ary2[6] + "  " + ary3[6].rstrip
    puts ary1[7] + "  " + ary2[7] + "  " + ary3[7].rstrip
    puts ary4[0] + "  " + ary5[0] + "  " + ary6[0].rstrip
    puts ary4[1] + "  " + ary5[1] + "  " + ary6[1].rstrip
    puts ary4[2] + "  " + ary5[2] + "  " + ary6[2].rstrip
    puts ary4[3] + "  " + ary5[3] + "  " + ary6[3].rstrip
    puts ary4[4] + "  " + ary5[4] + "  " + ary6[4].rstrip
    puts ary4[5] + "  " + ary5[5] + "  " + ary6[5].rstrip
    puts ary4[6] + "  " + ary5[6] + "  " + ary6[6].rstrip
    puts ary4[7] + "  " + ary5[7] + "  " + ary6[7].rstrip
    puts ary7[0] + "  " + ary8[0] + "  " + ary9[0].rstrip
    puts ary7[1] + "  " + ary8[1] + "  " + ary9[1].rstrip
    puts ary7[2] + "  " + ary8[2] + "  " + ary9[2].rstrip
    puts ary7[3] + "  " + ary8[3] + "  " + ary9[3].rstrip
    puts ary7[4] + "  " + ary8[4] + "  " + ary9[4].rstrip
    puts ary7[5] + "  " + ary8[5] + "  " + ary9[5].rstrip
    puts ary7[6] + "  " + ary8[6] + "  " + ary9[6].rstrip
    puts ary7[7] + "  " + ary8[7] + "  " + ary9[7].rstrip
    puts ary10[0] + "  " + ary11[0] + "  " + ary12[0].rstrip
    puts ary10[1] + "  " + ary11[1] + "  " + ary12[1].rstrip
    puts ary10[2] + "  " + ary11[2] + "  " + ary12[2].rstrip
    puts ary10[3] + "  " + ary11[3] + "  " + ary12[3].rstrip
    puts ary10[4] + "  " + ary11[4] + "  " + ary12[4].rstrip
    puts ary10[5] + "  " + ary11[5] + "  " + ary12[5].rstrip
    puts ary10[6] + "  " + ary11[6] + "  " + ary12[6].rstrip
    puts ary10[7] + "  " + ary11[7] + "  " + ary12[7].rstrip
  end
end

# Each month is its own array and each line of the month is its own array index!!