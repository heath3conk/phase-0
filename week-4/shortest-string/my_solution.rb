# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil
#
# Non-Ruby-method method for solving this:
# - examine the array and return nil if it's empty
# - create a variable to hold the length of the strings and set it equal to the length of the
#   first string in the array
# - create a second variable that is the first string itself
# - iterate through the strings in the array and compare the length of each to the value held
#   in the variable
# - if the length is shorter, 
#   	replace the length variable with this new, smaller value
#     	also replace the string held in the other variable
# - return the string


#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  if list_of_words == []
  	return nil
  else
  	shortest_length = list_of_words[0].length
  	current_shortest = list_of_words[0]
  	for word in list_of_words
  		if word.length < shortest_length
  			shortest_length = word.length
  			current_shortest = word
  		end
  	end
  end
  puts "The shortest string is #{current_shortest}"
  return current_shortest
end

shortest_string(['cat', 'zzzzzzz', 'apples'])