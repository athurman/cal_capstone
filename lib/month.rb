require_relative 'zellers_congruence'

class Month

  def self.print month, year
    amt_of_days_in_months = {1 => 31, 2 => 28, 3 => 31, 4 => 30,
                           5 => 31, 6 => 30, 7 => 31, 8 => 31,
                           9 => 30, 10 => 31, 11 => 30, 12 => 31}
    month_names = {1 => "January", 2 => "February", 3 => "March", 4 => "April",
                   5 => "May", 6 => "June", 7 => "July", 8 => "August",
                   9 => "September", 10 => "October", 11 => "November", 12 => "December"}
    amt_of_days_in_a_week = 7

    month_array = []
    i = 1
    while i <= amt_of_days_in_months[month]
      if i < 10
        space = " "
      else
        space = ""
      end
      day = space + i.to_s + " "
      month_array.push(day)
      i += 1
    end

    j = amt_of_days_in_a_week
    while j < month_array.length
      month_array.insert(j, "\n")
      j += 8
    end

    puts "#{month_names[month]} #{year}".center(20)
    puts "Su Mo Tu We Th Fr Sa"
    puts month_array.join
  end
end

# Raise NameError if month name is not included in Hash