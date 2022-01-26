# puts "hello"

# name = "Patrice"
# last_name = "Blocker"

# puts name + " " + last_name

# a=10
# b=20
# p a,b

# a,b,c = 10,20,30
# p a,b,c

# p "hello world".length

# p "Hello #{name} how are you"
# p "the sum of a and b is #{a+b}"
# String interpolation

p 5.9.class

str = '6'
p str
p str.class
p str.to_i

p 10.odd?

p 10.-(5)

p 20.between?(10, 30)

3.times { |count| puts "Patrice is awesome #{count}"}

5.downto(1){ |i| puts "Countdown: #{i}" }

#1.step(50,5) {|number| puts number}



# 0.step(85,7) do |n|
#     puts "Go up by 7"
#     puts "I'm now on #{n}"
# end

puts "hello".capitalize

name = "Snow White"
p name.downcase.include?("s")