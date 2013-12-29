require_relative 'zellers_congruence'
require_relative 'month'

class Year
  def initialize year
    raise RangeError if year < 1800 && year > 3000
    @year = year
  end
end