require 'prime'

def divisors(n)
  n.prime? ? "#{n} is prime" : (2...n).select{|i|n%i==0}
end

# p divisors(13)

string = 'chineedne'

def duplicate_count(text)
  arr = text.downcase.chars
  arr.uniq.count { |char| arr.count(char) > 1 }
end

# p duplicate_count(string)

def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end


first_three = [1, 1, 1]
# p first_three.slice(first_three.length - 3.. first_three.length)
new_arry = []
new_arry = first_three.slice(first_three.length - 3.. first_three.length).flatten
# p new_arry.sum

def tribonacci(signature, n)
  new_arr = []
  new_arr_two = [] 
  new_arr = signature
  ctr = 0
  while ctr < n - 3
    new_arr_two = new_arr.slice(new_arr.length - 3.. new_arr.length).flatten
    new_arr.append(new_arr_two.sum)
    ctr += 1
  end
  new_arr.pop(new_arr.length)
end

p tribonacci(first_three, 10)
