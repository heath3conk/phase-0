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
	puts 'You live at ' + street + ', in the beautiful city of ' + city + ', ' + state + '. Your zip is ' + zip + '.'
end

make_address my_street, my_city, my_state, my_zip
# why didn't this work with parentheses around the parameters?

# At the moment, this is not passing the output test. The failure says the output was nil, so it doesn't seem like
# a problem with typos or formatting but that the parameters are not being passed correctly. It works beautifully
# when I run the actual program so I don't see what the problem is. Have been staring at it for about an hour now
# and I'm just repeating the same things to try to fix it. Will have to come back to it another day and see if I 
# can get it to pass.