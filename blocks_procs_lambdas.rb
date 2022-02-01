# yield keyword transfers control. When called in a method, yield is expecting a block.

def pass_control
  puts 'This is inside the method!'
  yield # Pass control from method to block
  puts 'Now Im back inside the method'
end

pass_control { puts 'Now Im inside the block!'}

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i{'lovely'}

# proc is an object that functions as saved blocks
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

cubes = Proc.new {|number| number ** 3 }

# p a.map(&cubes)
a_cubes, b_cubes, c_cubes = [a, b, c].map {|array| array.map(&cubes)}

p b_cubes

ages = [10, 60, 92, 30, 43]
is_old = Proc.new do |age|
  age > 60
end

puts ages.select(&is_old)


# .block_given? method checks to see if a block was given
def pass_control_on_condition
  puts 'Inside the method'
  if block_given?
  yield
  end
  puts 'Back inside the method'
end

pass_control_on_condition {puts 'Outside of the function'}

# yeild with arguments
def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth('Patrice') {|name| puts "#{name} is great!"}


# custom each method using yeild
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = %w[Boris Arnold Melissa]
numbers = [10, 20, 30]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}"
end

# procs can be called using a .call method
hi = Proc.new{ puts 'Hi there'}
hi.call

# pass a ruby method as a proc
# this & means what method call you want done on everything in the array
p %w[1 2 3 4].map(&:to_i)
p [1, 2, 3, 4].reject(&:odd?)


# methods with procs as parameters
def talk_about(name, &myprc)
  puts "Let me tell you about #{name}"
  myprc.call(name)
end

good_things = Proc.new do |name| 
  puts "#{name} is a genius"
  puts "#{name} is a great person"
end

talk_about('Patrice', &good_things)

# Lambdas
squares_lambda = lambda {|number| number ** 2}
p [1, 2, 3].map(&squares_lambda)

to_euros = lambda{|dollars| dollars * 0.95}
to_pesos = lambda{|dollars| dollars * 20.67}
to_rupees = lambda{|dollars| dollars * 68.13}

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros)
p [1000, 2000, 3000].map(&to_pesos)