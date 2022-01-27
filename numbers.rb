# String to num and vice versa
str = '5.8'
p str.to_i
p str.to_f

num = 10
p num.to_s

# boolean
p 5 < 10

green = true
p green.class

# predicate methods, operators
p 10.odd?
p 1.+(2)

# between and float methods
p 20.between?(10, 39)

p 10.5.floor
p 10.5.ceil

# times method and blocks
5.times do |count| 
  puts 'Show the next mutliple'
  puts "#{3 * count}"
end

5.times { |count| puts "#{3 * (count + 1)}"}

# upto and downto methods
5.downto(0) do |current_number|
  puts "We are currently on #{current_number}"
end

# step method, first param is the number you want to reach, second param to step by
1.step(100, 10) { |number| puts number}

