puts 'Hello'
puts '4' + '3'

# print does not create a line break 
print 'Hello'
print 'World'

# p will let us see more details about what we type
p 'You can see the quotation marks with p, you can not with puts and print'

# syntax for exponents
p 2**5

# variables
name = 'Patrice'
age = 20 + 8

# parallel assignment
a, b, c = 10, 20, 30

a, b, c = b, c, a 

p a, b, c

# constants must be in all caps
NAME = 'Patrice'

# object methods
p 'hello world'.length
p 'hello world'.upcase
p 'HELLO WORLD'.downcase

# .next increments by one
p 10.next

# nil represents an empty object

#String interpolation
name = 'Patrice'
p "Hello #{name}, how are you?"

p "Result of 1+1 is #{1 + 1}"

