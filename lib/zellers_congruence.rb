class ZellersCongruence
  def self.calculate month, year
    raise RangeError if year.to_i >= 3000 || year.to_i < 1800
    days_of_the_week = {0 => "Saturday", 1 => "Sunday", 2 => "Monday",
                        3 => "Tuesday", 4 => "Wednesday", 5 => "Thursday",
                        6 => "Friday"}
    months_of_the_year = {"January" => 13, "February" => 14, "March" => 3,
                          "April" => 4, "May" => 5, "June" => 6,
                          "July" => 7, "August" => 8, "September" => 9,
                          "October" => 10, "November" => 11, "December" => 12}


    month = months_of_the_year[month.capitalize.strip] if month.size > 2 && !month.include?(".")
    month = months_of_the_year["February"] if month == "2" || month == "02"
    month = months_of_the_year["January"] if month == "1" || month == "01"
    year = year.to_i - 1 if month == 13 || month == 14
    month, year = month.to_i, year.to_i
    day = 1
    day_key = ( day + (26*(month + 1)/10) + year + (year/4) + 6*(year/100) + (year/400) )%7

    first_day_of_month = days_of_the_week[day_key]
  end
end