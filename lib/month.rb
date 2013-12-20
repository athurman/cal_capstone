require_relative 'zellers_congruence'

class Month

  def self.print month, year
    amt_of_days_in_months = {1 => 31, 2 => 28, 3 => 31, 4 => 30,
                           5 => 31, 6 => 30, 7 => 31, 8 => 31,
                           9 => 30, 10 => 31, 11 => 30, 12 => 31}
    month_names = {1 => "January", 2 => "February", 3 => "March", 4 => "April",
                   5 => "May", 6 => "June", 7 => "July", 8 => "August",
                   9 => "September", 10 => "October", 11 => "November", 12 => "December"}
    puts "#{month_names[month]} #{year}".center(20).sub(/\s+\Z/, "")
    puts "Su Mo Tu We Th Fr Sa"
  end
end

# Raise NameError if month name is not included in Hash