class ZellersCongruence
  def self.calculate month, year
    days_of_the_week = {0 => "Saturday", 1 => "Sunday", 2 => "Monday", 3 => "Tuesday", 4 => "Wednesday", 5 => "Thursday", 6 => "Friday"}
    month, year = month.to_i, year.to_i
    day = 1
    week_day_key = ( day + (26*(month + 1)/10) + year + (year/4) + 6*(year/100) + (year/400) )%7

    first_day_of_month = days_of_the_week[week_day_key]
  end
end