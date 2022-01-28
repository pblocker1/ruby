# regexp is another ruby object
# syntax looks like =~ and will return index position of the first match
# string =~ //

puts //.class
phrase = 'The Ruby Programming Language is amazing'
puts phrase =~ /i/
p phrase =~ /x/

# the period means a wildcard 

# .scan is called on a string but finds all matches in a regex and returns an array
voicemail = 'I can be reached at 55-123-467 or regexman@gmail.com'
p voicemail.scan(/e/)
p voicemail.scan(/[re]/)
p voicemail.scan(/\d/)
p voicemail.scan(/\d+/)

p voicemail.scan(/\d+/) { |digit_match| puts digit_match.length}

# use the wildcard when you don't know what character to expect in a position
puts phrase.scan(/.am/)

puts phrase.scan(/\./)
puts voicemail.scan(/\D/)

# an anchor is a symbol that ties a match to a point in the string
p voicemail.scan(/\A\d/)

sales = 'I bought 9 apples, 25 bananas and 4 oranges at the store'

# excluding characters
puts sales.scan(/[^aeiou]/)

# .sub and .gsub methods
puts 'whimper'.sub('m','s')
puts 'an apple'.gsub('a','-')
puts '(555)-555 1234'.gsub(/[-\s\(\)]/,'')