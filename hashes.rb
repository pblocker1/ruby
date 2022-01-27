# hashes are made with {}

empty_hash = {}
p empty_hash.class

nfl_roster = {'Tom Brady' => 'New England Patriots',
              'Tony Romo' => 'Dallas Cowboys',
              'Rob Gronkowski' => 'New England Patriots' }

nba_roster = {'Cleveland Cavaliers' => ['Lebron James', 'Kevin Love', 'Kyrie Irving'],
              'Golden State Warroirs' => ['Stephen Curry', 'Klay Thompson', 'Kevin Durant'] }

p nfl_roster['Tony Romo']


# Symbols are used as keys. They are lightweight strings and use less memory. It does not include as many methods as strings
p :name.class
# p :name.methods

person = {name: 'Patrice',
          age: 28}

p person[:name]

# convert symbols to strings
p :age.to_s
p 'age'.to_sym


menu = {burger: 3.99, taco: 5.96, chips:0.5}

# .fetch method
p menu.fetch(:burger)
p menu.fetch(:salad, 'NOT FOUND')

# .store method
menu_one = {burger: 3.99, taco: 5.96, chips: 0.50}
menu_one[:sandwich] = 8.99
menu_one[:taco] = 2.99
menu_one.store(:sushi, 24.99)

# .length and .empty?
p menu.length
p menu.empty?

# .each method
menu.each {|food, cost| puts "Food is #{food} cost is #{cost}"}

def value_count(hash, value)
  hash.count{|k, v| v == value}
end

p value_count(menu_one, 3.99)

# .each_key and .each_value
salaries = {director: 10000, producer: 20000, ceo: 300000000}
salaries.each_key do |position|
  puts 'EMPLOYEE RECORD:-----'
  puts "#{position}"
end

# retrieve keys or values from hash
p salaries.keys