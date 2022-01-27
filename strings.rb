# multiline strings
words = <<MLS

This will be a multiline string
when it outputs

MLS
puts words

# escape characters
puts "Juliet said \"Goodbye\" to Romeo"
puts "Lets add a line break\nright here"

# concatenate and .length and .size
first_name = 'Patrice'
last_name = 'Blocker'
p first_name.concat(last_name)

p first_name.length

# extracting characters
story = 'Once upon a time'
p story[3]
p story.slice(3)
p story.slice(-4)
p story.slice(3, 7)

# overwritting characters in a string
thing = 'rocket ship'
thing[2] = 'z'
thing[2, 5] = 'shdnm'

# bang methods modify the object it's operating on
word = 'hello'
word.capitalize!
p word

# include? empty? and nil? method
name = 'Snow White'
p name.include?('S')

# use of is empty string
p ''.empty?

name = 'Donald Duck'
last_name = name [100, 4]
p last_name.nil?

# showing how to use 
names = %w[Joe Mo Bob]

def custom_join(array, delimiter = '')
  string = ''
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index 
  end
  string
end

p custom_join(names)
p custom_join(names, '-')

# using of the count function
puts 'Hello World'.count('lo')

# custom count function
def custom_count(string, search_characters)
  count = 0
  string.each_char{ |char| count += 1 if search_characters.include?(char)}
  count
end

puts 'An amazin aardvark appeared'.count('Aa')
puts custom_count('An amazin aardvark appeared', 'Aa')

