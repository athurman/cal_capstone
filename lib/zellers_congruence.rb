class ZellersCongruence
  days = {0 => "Saturday", 1 => "Sunday", 2 => "Monday", 3 => "Tuesday", 4 => "Wednesday", 5 => "Thursday", 6 => "Friday"}

  def self.calculate month, year
    month = month.to_i
    year = year.to_i
    return "Calendar Date is #{month} #{year}"
  end
end