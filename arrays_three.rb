# in this situation, b is an alias for a. Any change to a (such as pushing, popping, etc) will also change b
# You need to avoid doing this. You should make a copy using .dup
a = [1, 2, 3]
b = a

# correct way
c = a.dup
p a.object_id == b.object_id

# splat arguments are used when a methods argument amount is unknown
def sum(*numbers)
  sum = 0
  numbers.each {|num| sum += num}
  sum    
end

p sum(2, 4, 6)
p sum(3, 6, 7, 8, 8)

# .any? .all? are boolean predicate methods
[1, 3, 5, 7, 2].any? do |number|
  p number.even?
end

# .find will select the very first option in an array that matches the criteria and .detect does exact same thing
words = ['dictionary', 'refrigerator', 'platypus', 'microwave']
p words.detect {|word| word.length > 8}

# .uniq removes duplicates
numbers = [1, 2, 3, 4, 5, 5, 4, 8, 9]
p numbers.uniq

# compact removes all nil objects from an array
p [1, nil, 2, 3, 9].compact

# .inject and .reduce methods are the same thing. 
result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "Previous #{previous}"
  puts "Current #{current}"
  previous + current
end

puts result

result = [10, 20, 30, 40].reduce(1) do |previous, current|
  puts "Previous #{previous}"
  puts "Current #{current}"
  previous * current
end

puts result

# .flatten removes all interior nested arrays

registrations = [
  %w[Bob Dylan Jack],
  %w[Rick Susan Molly],
  %w[Pierce Sean George]
]

p registrations.flatten

# .zip method combines elements in an array based on a common index position
names = %w[Bo Moe Joe]
registrations = [true, false, false]
p names.zip(registrations)

p [1, 2, 3].zip([4, 5, 6], %w[A B C])

# this is an example of using zip and returning a new array
def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
  # the .each_with_index keeps track of your position (index) in an array 
    final << [value, arr2[index]]
  end  
  final
end

p custom_zip(names, registrations)

# sample method can extract one or more random elements from an array
flavors = ['Chocolate', 'Vanilla', 'Strawberry', 'RumRasin']
puts flavors.sample(2)

# Multplying an array
p [1, 2, 3] * 5
p ['A', 'B', 'C'] * 4

# union combines arrays and removes duplicates 
p [1, 2, 3] | [3, 4, 5]

# remove array items that exist in another array
puts [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] - [2, 3]
a = [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] 
b = [1, 2, 3]

def custom_subtraction(arr1, arr2)
  final = []
  arr1.each {|value| final << value unless arr2.include?(value)}
  final
end
p custom_subtraction(a, b)

# array intersection, getting what is common to both arrays
p [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] & [1, 2, 3]

c = [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] 
d = [1, 2, 3]

def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each { |element| final << element if arr2.include?(element) }
  final
end

p custom_intersection