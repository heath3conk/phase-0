# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below
def welcome(some_string)
	if some_string.include? 'CA'
	#address contains "CA" say "Welcome to California"
		return 'Welcome to California'
	else 
	# say "you should move to California"
		return 'You should move to California'
	end
end

puts welcome('a string with CA in it')
puts welcome('nothing like cali in here')