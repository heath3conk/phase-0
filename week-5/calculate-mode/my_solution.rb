# Calculate the mode Pairing Challenge

# I worked on this challenge with: Tyler Doerschuk
# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array of strings or integers
# What is the output? (i.e. What should the code return?) An array of most frequently occuring 
# 	elements of inputted array
# What are the steps needed to solve the problem?
#   Iterate over the array's values
# 		- make a hash
# 			- whose keys are the elements in the array  
#   		- whose values represent the number of times that key appears in the original array
# 	Iterate over hash and compare one value to another
# 	Capture the key or keys associated with the largest value
# 	Return keys are the values that have the highest quanity
# 	Organize back into an array




# 1. Initial Solution
# def mode(list_of_things)
#   catalog = Hash.new{ |thing, occurrences| catalog[occurrences]=1 }
#   list_of_things.each { |next_thing| 
#   	if catalog.has_key?(next_thing)
#   		catalog[next_thing] += 1
#   	else
#   		catalog[next_thing]
#   	end
#   }

#   most_common=[]
#   count_all = catalog.values
#   catalog.each { |thing,occurrences|
#   	if occurrences == count_all.max
#   		most_common.push(thing)
#   	end
#   }

#   return most_common
# end


# 3. Refactored Solution
def mode(list_of_things)
	catalog = Hash.new{ |thing, occurrences| catalog[occurrences]=1 } 

	list_of_things.each { |next_thing| 
		if catalog.has_key?(next_thing)
			catalog[next_thing] += 1
		else
			catalog[next_thing]
		end
	}

	count_all = catalog.values
	most_common = catalog.reject {|thing,occurrences|  occurrences < count_all.max}.keys

	return most_common
end

puts mode([1,4,1,4,3,6])



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
	Our decisions about whether to use an array or hash at any given step had to do with:
		- Did we need to use both the thing and the occurrences info? If so, we used a hash. 
		- Could we find a method for an array/hash that did what we needed to get done?
		- Is the return value of the method we found useful for the next thing we need to do?

	We started out with a hash because we had to keep track of two pieces of related data: 
	a "thing" from whatever list we were initially given and the number of "occurrences" of 
	that specific thing in the list. (I called it a "thing" because it could be a string, integer
	or some other kind of object so I didn't want to get too specific about what I named it.)

	We used the count_all array to give us the count of all the things in the array. Basically, we 
	wanted to isolate just the values from our hash without caring what things they were related to.
	
	Then we finished with our most_common array, which we filled with the things from our catalog
	that were related to the highest count of occurrences.


Were you more successful breaking this problem down into implementable pseudocode than 
the last with a pair? 
	Yes


What issues/successes did you run into when translating your pseudocode to code?
	It sounded easier in our pseudocode than it turned out to be once we started looking for
	methods to use. 


What methods did you use to iterate through the content? Did you find any good ones when
you were refactoring? Were they difficult to implement?
	We used "each" for both the array and the hash. In refactoring, we used the "reject" method on
	the catalog hash. It wasn't very difficult to implement...I really like chains! 

=end