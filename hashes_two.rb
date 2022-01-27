# hashes with default values
fruit_prices = Hash.new('Not found')
fruit_prices[:bananas] = 1.05

p fruit_prices[:steak]

# convert hash to array and vice versa
spice_girls = {scary:'Melanie Brown',
               sporty:'Melanie Chisholm',
               baby:'Emma Bunton'}

p spice_girls.to_a.flatten

power_rangers = [
    [:red, 'Jason'], [:black, 'Zack'],
    [:blue, 'Billy'], [:yellow, 'Trini'],
    [:pink, 'Kim']
]

puts power_rangers.to_h

# .sort and .sort_by on a hash returns an array. Remember arrays are better for lists in order

spice_girls_one = {scary:'Melanie Brown',
    sporty:'Melanie Chisholm',
    baby:'Emma Bunton'}

# p spice_girls_one.sort
p spice_girls_one.sort_by{|type, girl| spice_girls_one}

# .key? and .value? check to see if a key or value is in a hash
puts spice_girls_one.key?(:baby)

# hash as method arguments
def calculate_total_1(price, tip, tax)
    tax_amount = price * tax
    tip_amount = price * tip
    price + tip_amount + tax_amount
end

bill = {price: 24.99, tip: 0.18, tax: 0.07}
def calculate_total_2(info)
    tax_amount = info[:price] * info[:tax]
    tip_amount = info[:price] * info[:tip]
    info[:price] + tax_amount + tip_amount
end

p calculate_total_2(bill)

# .select and .reject method
recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}
high = recipe.select{|ingredient, teaspoons| teaspoons >= 5}

# .merge is used to combine hashes