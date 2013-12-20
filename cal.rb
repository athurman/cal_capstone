require_relative 'lib/month'

month = ARGV[0].to_i
year = ARGV[1].to_i

printed_month = Month.new(month, year)
printed_month.print