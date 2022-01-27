# time object obviously represents time and dates

puts Time.new
p Time.new(2022, 5, 18, 7, 30, 22)

today = Time.now
p today.month, today.day, today.year, today.hour

# y day is the day of the year
p today.yday

p today.monday?

# you can also use comparing methods on times such as <, >, == and so forth

# convert a ruby time object to another object
puts today.to_s

# convert time to a formatted string. Use the strftime docs
p today.strftime("%B %d")

