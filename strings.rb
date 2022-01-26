names = %w[Joe Mo Bob]

def custom_join(array, delimiter="")
  string = ""
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index 
  end
  string
end

p custom_join(names)
p custom_join(names, "-")


puts 'Hello World'.count('lo')

def custom_count(string, search_characters)
  count = 0
  string.each_char{ |char| count += 1 if search_characters.include?(char)}
  count
end

puts 'An amazin aardvark appeared'.count('Aa')
puts custom_count('An amazin aardvark appeared', 'Aa')

