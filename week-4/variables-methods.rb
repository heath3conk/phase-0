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

# How do you define a local variable?
# Define a local variable by setting it equal to it's initial value. For example, middle_name = 'Cait'. 
# The name of the variable goes to the left of the equals sign and the value to the right.

# How do you define a method?
# 

# What is the difference between a local variable and a method?
# How do you run a ruby program from the command line?
# How do you run an RSpec file from the command line?
# What was confusing about this material? What made sense?