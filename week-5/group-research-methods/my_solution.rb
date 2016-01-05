# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
# input: an array and a number
# output the array with the modification that any elements of it that were numbers have been 
#  	incremented by the number given as an argument (non-numeric elements unchanged)
# steps:
# 	- iterate through the array
# 	- if the element is not a number, leave it alone
# 		- otherwise, replace the original number with the sum of that original number and the 
#   	  number given as an argument
# 	- return the array, with modifications (not a copy!)
def my_array_modification_method!(source, thing_to_modify)
	index = 0
	source.each { |item| 
		if item.respond_to?(:integer?)
			source[index] = item + thing_to_modify
			index += 1
		else
			index += 1
		end
	}
end	

# input: an hash and a number
# output the hash with the modification that each of its values have been incremented
#  	by the number given as an argument
# steps:
# 	- iterate through the hash
# 	- replace the original value with the value plus the second argument provided
# 	- return the hash, with modifications (not a copy!)

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value| 
  	source[key] = value + thing_to_modify
  }
end

# Identify and describe the Ruby method(s) you implemented.
=begin 
integer? 
 This method checks whether its receiver is an integer. It returns "true" if the object is
 an integer. 

respond_to?
 This method takes a method name as its argument and returns "true" if the receiver object
 has that argument as a method. In this case, I wanted to add an integer to only those elements
 in the array that were themselves integers and leave the strings alone. If you try to add an
 integer to a string, you'll get an error so, to avoid that, I called respond_to?(:integer?) on
 each element of the array and performed the addition only on those for which this returned "true".
 This is not a great solution because (a) if the numbers in the array had been in quotes, it 
 wouldn't have worked and (b) strings can successfully call the .to_i method, and would then return
 true for this... It did pass the tests though!

each
 The each method works on both Arrays and Hashes. It iterates through the collection and performs
 some operation on each member of it. The operation it performs is whatever is in the code block 
 that follows it, enclosed in {}.


[]
 I'm probably being too literal here in listing this method but it is one. With an array, you can 
 set (or replace, as in this case) an element at a paticular index by calling this method. For
 example: source[index] = new_element. In a hash, you can set a value equal to a key, as in:
 source[key] = value + thing_to_modify

+=
 Okay, definitely getting too literal but...this one takes a value and adds that value to whatever 
 is to the right of the method call so index += 1 is the same thing as index = index + 1

TIPS FOR USING RUBY DOCS
 The only tip I've got at the moment is to not limit yourself to the object you think you should
 looking at. I roamed all over arrays, hashes, strings, integers (not so much in enumerables,
 actually) and tried a bunch of different things. By "roaming" I mean that I scrolled through the
 list of methods and looked at any that seemed even remotely likely. I also found it helpful to 
 look closely at the examples to try to figure out in advance what exactly I'd get back as a 
 return value. Some things did not do what I had expected them to.
=end

# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#