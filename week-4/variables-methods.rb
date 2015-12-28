# FULL NAME GREETING
# Print a line on the console to ask for first name
# Save the answer, removing the newline after it

# Print a line on the console to ask for middle name
# Save the answer, removing the newline after it

# Print a line on the console to ask for last name
# Save the answer, removing the newline after it

# Print a line on the console that greets the user with their full name

puts 'Hello! What\'s your first name?'
first_name = gets.chomp

puts 'What\'s your middle name?'
middle_name = gets.chomp

puts 'What\'s your last name?'
last_name = gets.chomp

puts 'Glad to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name

# BIGGER, BETTER FAVORITE NUMBER
# print a line on the console to ask for the user's favorite number
# save the answer
# add 1 to the user's favorite number
# print a line on the console suggesting the higher number as a new favorite

puts 'So...what\'s your favorite number?'
favorite_number = gets.to_i
new_favorite = favorite_number + 1
puts 'Maybe you should consider switching to ' + new_favorite.to_s + '.'
puts 'I mean, ' + new_favorite.to_s + ' is bigger so it seems like a better number than ' + favorite_number.to_s + '.'


# Link to my address formatting program: https://github.com/heath3conk/phase-0/blob/master/week-4/address/my_solution.rb
# Link to my math program: https://github.com/heath3conk/phase-0/blob/master/week-4/math/my_solution.rb

# How do you define a local variable?
# Define a local variable by setting it equal to it's initial value. For example, middle_name = 'Cait'. 
# The name of the variable goes to the left of the equals sign and the value to the right.

# How do you define a method?
# You start the method definition with 'def', give it a name and possibly one or more arguments. 
# Indent the lines below the def, where you describe the actions the method should take on. You 
# may or may not want to have an explicit return value for the method. End with 'end'.

# What is the difference between a local variable and a method?
# A method is an action or series of actions effected on an object. A variable is a value given to an object. 
# For example, you could set a variable equal to 5 and then call a method that multiplies that variable by
# 6. If you change the variable from 5 to 2, the method will evaluate to a different value but it will always 
# multiply its given variable by 6. 

# A local variable - as different from a global variable - is accessible only within the method that defines it. 

# How do you run a ruby program from the command line?
# Type 'ruby file_name.rb'

# How do you run an RSpec file from the command line?
# Type 'rspec file_name.spec.rb' 

# What was confusing about this material? What made sense?
# I still don't know why my program that prints a formatted address won't take the arguments inside of parentheses.
# When I remove the parentheses, it works as expected and passes the tests. With the parentheses, I get errors about
# an unexpected token (the comma!). Maybe I'll come across something about this in my reading later in the week.
# I didn't have trouble with much else in this challenge; it was all pretty intuitive and followed from the 
# reading.