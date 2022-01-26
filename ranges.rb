nums_exclude_last_num = 1...5
nums_include_last_num = 1..5

p nums_exclude_last_num
p nums_include_last_num
p nums_exclude_last_num.class

# 3 dots exclude the last number. 2 dots include the final value

nums = 90...150
p nums.first(4)
p nums.last

alphabet = 'a'..'z'
p alphabet.first(5)
puts alphabet.first(5)

numbers = 143...769
p numbers.size
# .size method

half_alphabet = 'a'..'m'
puts half_alphabet.include?('m')
#check if value is in a range

puts rand
puts rand.round(3)
puts rand(100)
