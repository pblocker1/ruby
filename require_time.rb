# how to take a string and interpret as time. Needs a require at the top
require 'time'

puts Time.parse('2016-01-01')
puts Time.strptime('03-04-2000','%m-%d-%Y')