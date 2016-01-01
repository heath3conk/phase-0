# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil
#
# Non-Ruby-method method for solving:
# examine the array and return nil if it's empty
# create a variable that is set to the first element in the array
# iterate through the remaining elements in the array, comparing each one to the current 
# value of that variable
# if the element in the array is larger than the variable's value, replace the value of the
# variable
# otherwise, move on to the next item in the array

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums == []
  	return nil
  else 
  	current_largest = list_of_nums[0]
   	for num in list_of_nums
  		if num > current_largest
  			current_largest = num
  		end
  	end
  end
  puts "The largest number is #{current_largest}"
  return current_largest
end

largest_integer([7,15,3,42])