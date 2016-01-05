# Pad an Array

# I worked on this challenge with: Kathryn Garbacz

# I spent 1 hour and 15 minutes on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
#input: array, non negative integer, option default value
#output: a new array
#steps: 
#1. create a new array that is a copy of input array
#2. test length of array, compare to non-negative integer and return if long enough
#3. if no default value provided, just make the copy array the size of the integer
#4. if default value is provided, make copy array bigger and assign the default value
#5. return the new array



# 1. Initial Solution
# def pad(array, min_size, value = nil) #non-destructive
#   result = Array.new
#   array.each do |item|
#     result.push(item)
#   end
#   if result.length >= min_size
#     return result
#   else
#     difference = min_size - result.length
#     for i in 1..difference
#       result.push(value)
#     end
#   end
#   return result
# end

# def pad!(array, min_size, value = nil) #destructive
#   result = array
#   if result.length >= min_size
#     return result
#   else
#     difference = min_size - result.length
#     for i in 1..difference
#       result.push(value)
#     end
#   end
#   return result
# end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  result = array.dup
  if result.length >= min_size
    return result
  else
    difference = min_size - result.length
    result.fill(value,result.length,difference)
  end
  return result
end

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
  	difference = min_size - array.length
    array.fill(value,array.length,difference)
  end
  return array
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
	Yes, we came up with the steps pretty easily

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties 
and successes did you have?
	We got through it fairly quickly. The only parts that held us up were coming up with our first, non-
	built-in method for filling in the array with the default value and then figuring out why we were 
	failing tests for the non-destructive version (we hadn't created a dup originally.)

Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?
	We were using the coder pad to do this and did the non-destructive version first. The tests it failed
	were the ones about confirming it was non-destructive so, when we started to do the pad! version, we 
	knew we had already achieved that. 

When you refactored, did you find any existing methods in Ruby to clean up your code?
	Yes, we used the dup method rather than creating a new array and pushing the values from the original
	into it. Then we used the fill method to put in the default values, when necessary.

How readable is your solution? Did you and your pair choose descriptive variable names?
	I think it's pretty readable.

What is the difference between destructive and non-destructive methods in your own words?
	Destructive methods change the state of objects that already exist. Non-destructive methods copy 
	an existing object and take their actions on the copy, leaving the original object alone. This is 
	especially important if the original object is used elsewhere so that its alteration might affect
	other parts of the code.
=end