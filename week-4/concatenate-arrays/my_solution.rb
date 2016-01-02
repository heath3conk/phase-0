# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below
#
# - define a method that takes as input two arrays
# - the method combines the contents of the arrays and returns a single array that contains
#   all the elements that were in the two original objects
#
# - examine the two arrays for one of three cases:
# 		if both are empty, return an empty array
#   	if one array is empty, return the non-empty array
#  		otherwise, iterate through the elements of the shorter array and add
#  			each one to the end of the longer array
#
# - return the array 

def array_concat(array_1, array_2)
  # Your code here
  if array_1 == []
  	return array_2
  else 
  	i = 0
	while i < array_2.length
		array_1 << array_2[i]
		i += 1
	end
end
  puts array_1
  return array_1
end

 array_concat(['cat', 1], [2])