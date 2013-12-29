require_relative 'lib/month'
require_relative 'lib/year'

if ARGV[0].size == 4
  year = ARGV[0].to_i
else
  month = ARGV[0].to_i
  year = ARGV[1].to_i
end

if year == ARGV[0].to_i
  printed_year = Year.new(year)
  printed_year.print
else
  printed_month = Month.new(month, year)
  printed_month.print
end