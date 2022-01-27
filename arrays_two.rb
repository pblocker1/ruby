3.times do |number|
  square = number * number
  puts "Curent #{number} and the square is #{square}"
end

# showing of the each method
candies = ['Sour patch kids', 'Milky Way', 'Airheads']

candies.each do |candy|
  puts "I love eating #{candy}"
end

# another example of the each method, to upcase
names = %w[bo moe joe]
names.each{|name| puts name.upcase}

# adding odd numbers to a new array
fives = [5, 10, 15, 20, 25, 30]
odds = []

fives.each do |number|
  if number.odd?
    odds << number
  end
end

p odds

# adding to array using ternary operator
evens = []
odds = []
fives.each do |number|
  number.even? ? evens << number : odds << number
end

p evens, odds

# map function returns a new array based on criteria
numbers = [1, 2, 3, 4, 5]
p numbers.map{|number| number ** 2}

# more on while loop practice
animals = ['Lion', 'Zebra', 'Baboon', 'Cheetah']
i = 0
while i < animals.length
  puts i
  puts animals[i]
  i += 1
end

# unpacking arrays in Ruby
users = [['Bob', 25, 'Male'], ['Susan', 48, 'Woman'], ['Larry', 39, 'Male']]
bob, susan, larry = users
p bob
