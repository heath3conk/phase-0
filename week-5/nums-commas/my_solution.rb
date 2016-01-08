# Numbers to Commas Solo Challenge

# I spent 3.25 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# 	A positive integer
# What is the output? (i.e. What should the code return?) 
# 	A string respresentation of the number provided with commas inserted.

# What are the steps needed to solve the problem?
# 	convert the number provided into a string (so 1023 becomes "1023")
# 	if the given number is less than 1000, return it without any changes
# 	slice the string into three-character parts, starting at the end and moving towards the beginning
# 		- store the separate parts in a container (["023","1"])
# 	reverse the order of the string parts inside the container (["1","023"])
# 	join the string parts together with commas between each one


# 1. Initial Solution
# def separate_comma(number)
# 	string_number = number.to_s
	
# 	if string_number.length <= 3
# 		return string_number
# 	else 
# 		smaller_strings = []
# 		last_index = -3 
# 		while last_index > -string_number.length 
# 			smaller_strings.push(string_number.slice(last_index, 3))
# 			last_index -= 3 
# 		end
# 		whats_left = string_number.length + last_index + 3
# 		# calculates how many characters at the beginning of the string were not
# 		# sliced and pushed into smaller_strings by the while loop

# 		smaller_strings.push(string_number.slice(0,whats_left))

# 		in_order = smaller_strings.reverse

# 		string_with_commas = ""
# 		string_with_commas += in_order[0]
		
# 		index = 1
# 		while index < in_order.length
# 			string_with_commas += "," + in_order[index]
# 			index+=1
# 		end

# 	end

# 	return string_with_commas

# end



# 2. Refactored Solution
# pseudocode:
# input & output are the same as above
# steps: use math!
# 	convert the number provided into a string (so 1023 becomes "1023")
# 	if the given number is less than 1000, return it without any changes
# 	determine whether the size of the given string is evenly divisible by 3
# 		if it is:
#  			insert a comma after every third character in the string
# 		if it is not:
#  			insert a comma after however many characters equal the string length mod 3
# 			insert a comma after every third character after that
# 

def separate_comma(number)
	string_number = number.to_s
	
	if string_number.length <= 3
		return string_number
	else 
		if string_number.length%3 == 0
			comma_place = 3
			# if the length of the string is evenly divisible by 3, the first
			# comma goes after the third character in the string
		else
			comma_place = string_number.length%3
			# if the length is not evenly divisible by 3, figure out the remainder
			# when you divde by 3 and put the first comma after that character in 
			# the string
		end
			
		comma_counter = 0
			
		while comma_place < string_number.length
				string_number.insert(comma_place, ",")
				comma_counter += 1
				comma_place += 3 + comma_counter
		end
				
	end

	return string_number

end


# puts separate_comma(997)
# puts separate_comma(9973)
# puts separate_comma(99784)
# puts separate_comma(997824)
# puts separate_comma(9973284)
# puts separate_comma(99788034)
# puts separate_comma(843994850)


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
	I really felt like this was at least as much a logic problem as it was an exercise in coding.
	My initial and refactored solutions are totally different because partway through wrestling with 
	my initial solution, it occurred to me that it would be simpler to just do some calculation based
	on the length of the string. 

	It took me 2 1/2 hours to make the initial solution work. At various points, I had extra lines, 
	missing parts of the string...basically all kinds of issues taking the thing apart and then getting
	it put back together the way I wanted it. 

	The refactored solution took me about 20 minutes to do. Part of that was due to the fact that it had
	been percolating in the back of my mind during the intial round but it's probaby also because it is
	just more rational.

Was your pseudocode effective in helping you build a successful initial solution?
	Yes. I definitely like that process. It helps to clarify how I expect the thing to go. The only 
	drawback I can think of for a completist like me is that I then feel somewhat compelled to build the code 
	the way I initially thought I would. In real like, I don't think there would be a point to completing
	my initial solution once I'd realized that the second one would be better. (I just wanted to BEAT IT 
	at that point.)

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the 
Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way 
your code works? If so, how?
	The new methods I used here were: reverse, slice and inject.

	My experience with Ruby docs has been good so far. When I first looked at that site (was that LAST 
	WEEK?!?) it seemed a bit confusing but now I feel pretty comfortable with it. I mostly skim down the list 
	of methods for whatever object I'm using and click on any that seem likely to help. I try them out and
	they have mostly behaved the way I expected. In this challenge, the hard part was making sure that the
	arguments I fed to those methods were the ones I needed them to be.

	I would say that the inject method was way more efficient than all the slicing and adding I did in the 
	initial solution.

How did you initially iterate through the data structure?
	In my first solution, I used a while loop associated with the index of an array that held slices of the 
	original number. 

	In the refactored solution, I didn't use a data structure (I don't think a string qualifies?). I just 
	inserted the commas directly into the string, again using a while loop that measured against the length
	of the string.

Do you feel your refactored solution is more readable than your initial solution? Why?
	It definitely simpler! There are fewer variables and structures to keep track of. I added a couple of
	comments in the places where I thought there was even the possibility of confusion.

=end