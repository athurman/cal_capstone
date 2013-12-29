require_relative 'lib/month'

if ARGV[0].size == 4
  year == ARGV[0].to_i
else
  month = ARGV[0].to_i
  year = ARGV[1].to_i
end

if month.nil?
  printed_year
else
  printed_month = Month.new(month, year)
  printed_month.print
end