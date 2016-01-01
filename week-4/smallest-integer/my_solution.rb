# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array (this is the input & output)
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil
#
# Non-Ruby-method method for solving:
# examine the array and return nil if it's empty
# create a variable that is set to the first element in the array
# iterate through the remaining elements in the array, comparing each one to the current 
# value of that variable
# if the element in the array is smaller than the variable's value, replace the value of the
# variable
# otherwise, move on to the next item in the array

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums == []
  	return nil
  else 
  	current_smallest = list_of_nums[0]
   	for num in list_of_nums
  		if num < current_smallest
  			current_smallest = num
  		end
  	end
  end
  puts "The smallest number is #{current_smallest}"
  return current_smallest
end

smallest_integer([3,5,7,2])