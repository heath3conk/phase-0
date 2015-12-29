# Good Guess

# I worked on this challenge by myself.


# Your Solution Below
def good_guess?(guess)
	if guess.to_i == 42
		return true
	else return false
	end	
end

puts good_guess?(42)
puts good_guess?(30)
puts good_guess?('42')