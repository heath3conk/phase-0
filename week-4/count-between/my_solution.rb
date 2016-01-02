# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0
#
# - examine the array and return 0 if it's empty
# - create a counter variable and set it to zero
# - iterate over the items in the array
#  		determine if each one is between the lower and upper bounds (inclusive)
# 		for each element that is between those bounds, increment the counter
# - return the counter value	

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  if list_of_integers == []
  	return 0
  else
  	counter = 0
  	for num in list_of_integers
  		if num >= lower_bound && num <= upper_bound
  			counter += 1
  		# else
  		#	next
  		end
  	end
  end
  puts "The number of elements in the given range is: #{counter}"
  return counter
end

count_between([1, 2, 200], 0, 100)