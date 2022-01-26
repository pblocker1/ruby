age = 25
ticket = 'General'

if age > 21 && ticket == 'General'
  puts 'Congrats'
end

num = 1000
p num.respond_to?(:length)
#this method just checks to see if the method length can respond and it can not, because it's a number. length is only used for strings.

puts "Hello".respond_to?(:length)

puts 1 < 2 ? "Yes, it is" : "No it's not"
#ternary operator... conidtion ? result if true : result if false

def even_or_odd(number)
    number.even? ? "Number is even" : "Number is odd"
end

puts even_or_odd(6)


