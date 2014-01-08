require_relative 'lib/month'
require_relative 'lib/year'

raise ArgumentError if ARGV.length > 2

if ARGV.length == 0
  month = Time.now.month.to_i
  year = Time.now.year.to_i
elsif ARGV[0].size == 4 && ARGV.length == 1
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