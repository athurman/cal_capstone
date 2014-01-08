class ZellersCongruence
  def self.calculate month, year
    month, year = month.to_i, year.to_i
    month = 13 if month == 1
    month = 14 if month == 2
    year = year - 1 if month > 12
    day = 1
    first_day_of_month = ( day + (26*(month + 1)/10) + year + (year/4) + 6*(year/100) + (year/400) )%7
    first_day_of_month = first_day_of_month - 1
    first_day_of_month = 6 if first_day_of_month < 0
    first_day_of_month
  end
end