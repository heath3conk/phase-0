# Format an Address

# I worked on this challenge by myself.


# Your Solution Below
# print a line on the console asking for street address
# save streeet address

# print a line on the console asking for city
# save city

# print a line on the console asking for state
# save state

# print a line on the console asking for zip
# save zip

# define a method MAKE_ADDRESS that takes these four parameters and prints 
# the address on the console in the proper format

puts 'What is your street address?'
my_street = gets.chomp

puts 'What city do you live in?'
my_city = gets.chomp

puts 'What state is that in?'
my_state = gets.chomp

puts 'And what\'s your zip?'
my_zip = gets.chomp

def make_address (street, city, state, zip)
	'You live at ' + street + ', in the beautiful city of ' + city + ', ' + state + '. Your zip is ' + zip + '.'
end

puts make_address my_street, my_city, my_state, my_zip
# why doesn't this work with parentheses around the parameters????