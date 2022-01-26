def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def calculator(a,b,operation = 'add')
  case 
  when operation == 'add'
    then add(a, b)
  when operation == 'subtract'
    then subtract(a, b)
  end
end

p calculator(3,2,"add")

def calculate_school_grade(grade)
    case grade
    when 90..100
        "A"
    when 80..89
        "B"        
    end
end

p calculate_school_grade(95)

puts !true
#negation symbol

password = "dominoes"
unless password == "whiskers"
    puts "Not allowed!"
else
    puts "That's not correct"
end


i = 1

while i < 10
puts i = i + 1
end

until i > 9
  puts i
  i +=1
end

number = 2600
puts "Huge number" if number > 2500


#Conditional Assignment
greeting = "Hello"
extraction = 100
letter = greeting[extraction]
p letter
letter ||= "Not found"
p letter