# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Coline Forde.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of the numbers in the array.

# Steps to solve the problem.
# - have the method take in an array of numbers
# - create a variable called sum and set it at zero to start 
# - iterate through the array, adding each of its elements to the sum
# - return the sum of all the numbers


# 1. total initial solution
def total (nums)
	sum = 0
	counter = 0
	while counter <= nums.length-1
		sum += nums[counter]
		counter += 1
	end
	return sum

end

puts total ([4, 7, -11])


# 3. total refactored solution
def total(nums)
	sum = 0
	nums.each do |num|
		sum += num
	end 
	return sum 
end 


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Input: Array of strings
# Output: Sentence

# Steps to solve the problem.
# - have the method take in an array of strings
# - create a variable called output and set it to be an empty string
# - go through each string in the array and add it to the output string, with some 
# => additions or modifications to make it more sentence-like:
	# - make every element of the array act like a string, even if it was an integer in the original.
	# - if it's the first word in the array, return the string with the first letter capitalized. 
	# - if it's the last word, return the string with period at the end
	# - for every word in between, add the word to the output array with a space between the words.
# - return the completed sentence string


# 5. sentence_maker initial solution

def sentence_maker(strings)
	output = ''
	index = 0
	while index < strings.length
		if index == 0
			output << strings[index].to_s.capitalize + ' '
		elsif index == strings.length - 1
			output << strings[index].to_s + '.'
		else
			output << strings[index].to_s + ' '
		end
		index += 1
	end 
	return output
end

# 6. sentence_maker refactored solution
def sentence_maker(strings)
	output = strings[0].capitalize + ' '
	index = 1
	while index < strings.length
		if index == strings.length - 1
			output << strings[index].to_s + '.'
		else
			output << strings[index].to_s + ' '
		end
		index += 1
	end 
	return output
end
