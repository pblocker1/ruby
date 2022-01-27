File.open('Document.txt').each do |line|
  puts line
end

# write to a file
File.open('Document.txt', 'w') do |file|
  file.puts "I'm writing to the file from Ruby"
end

# command line arguments are arguments given to a ruby program from a command line
ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end