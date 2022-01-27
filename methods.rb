def introduce_self
  puts 'My name is Patrice'
end
introduce_self

# parameters
def praise_person(name, age)
  puts "#{name} is the best!"
  puts "His age is #{age}"
end
praise_person('Pizza Guy', 25)

# if the return method is included in a block, it marks the end of a program
def add_two_numbers(num1, num2)
  puts 'Solving Problem'
  return 'Nevermind!'
  num1 + num2
end
add_two_numbers(2, 5)

# if, elsif, else
password = 'test'
if password == 'test'
  puts 'Correct password'
elsif password == 'green'
  puts 'No its not green'
else
  puts 'Incorrect'
end

# nested if statements
def meal_plan(time_of_week, time_of_day)
  if time_of_week == 'weekday'
    if time_of_day == 'breakfast'
      'Cereal'
    elsif time_of_day == 'lunch'
      'Sandwich'
    elsif time_of_day == 'dinner'
      'Chicken Nuggets'
    end
  elsif time_of_week == 'weekend'
    if time_of_day == 'breakfast'
      'French Toast'
    elsif time_of_day == 'lunch'
      'BBQ chicken pizza'
    elsif time_of_day == 'dinner'
      'Steak'
    end
  end
end

p meal_plan('weekday', 'lunch')

# .respond_to? just checks to see if a method will respond to a given method
puts 'Hello'.respond_to?('length')
puts 'Hello'.respond_to?(:length)

# Ternary Operator
pokemon = 'Pikachu'
puts pokemon == 'Charizard' ? 'Fireball' : 'Not Charizard'

# Call a method from another method
def calculator(a, b, operation = 'add')
  if operation == 'add'
    add(a, b)
  elsif operation == 'subtract'
    subtract(a, b)
  end
end

p calculator(3, 2, 'add')

# case statement
def calculate_school_grade(grade)
  case grade
  when 90..100
    'A'
  when 80..89
    'B'        
  end
end

p calculate_school_grade(95)

# while loop
i = 1

while i < 10
  puts i
  i += 1
end
