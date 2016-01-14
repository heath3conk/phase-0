# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Sydney Rossman-Reich.
# I spent 1.25 hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: True or False
# Steps:
#  convert the credit card nunber in to a string
#  confirm that the string has exactly 16 characters and throw an error if not
#  split the string into individual digits and put them into an array
#  iterate over the array and double every second element
#  split the string into individual digits and put them into an array
#  add all the individual numbers in the array together
#  if the result is evenly divisible by 10, return "true"
#     otherwise return "false"
#
#


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_number)
#     @card_number = card_number
#     @number_string = @card_number.to_s.chars.map!{|v|v.to_i}
#     raise ArgumentError, "wrong number of digits" if @number_string.length != 16
#   end
  
#   def check_card
#     doubled_array = @number_string.each_index{|index| index.even? ? @number_string[index]*=2 : @number_string[index]}.join("").chars.map!{|v|v.to_i}.reduce(:+)
    
#     doubled_array % 10 == 0 ? true : false
    
#   end
  
# end


# Refactored Solution

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    @number_string = @card_number.to_s.chars.map!{|v|v.to_i}
    raise ArgumentError, "wrong number of digits" if @number_string.length != 16
  end

  
  def check_card
    doubled_array = @number_string.each_index{|index| 
      index.even? ? @number_string[index]*=2 : @number_string[index]}
    answer = doubled_array.join("").chars.map!{|v|v.to_i}.reduce(:+)
    
    answer % 10 == 0
    
  end
  
end


card = CreditCard.new(4408041234567901)
p card.check_card



# Reflection
=begin 
What was the most difficult part of this challenge for you and your pair?
	Switching the card number back and forth between an integer and a string. It wasn't so much
	that it was difficult as it felt cumbersome.

What new methods did you find to help you when you refactored?
	We removed the ternary operation, since the result we wanted (true or false) was what we'd get 
	if the line just had the mod calculation compared to 0.

	We put the work of the "check_card" method, except for that comparion, onto two lines of code
	rather than one to make it easier to read. I like chaining methods together but once I get past
	two or three of them, I feel like I could lose track of what's happening.


What concepts or learnings were you able to solidify in this challenge?
	We used the one-line if/then/else operation twice, so I'm getting more comfortable with how that's
	constructed. We also were able to figure out pretty quickly why we were getting a failure on the 
	tests even though the code was doing what we wanted (we had the "raise ArgumentError" bit in the 
	wrong method).

=end