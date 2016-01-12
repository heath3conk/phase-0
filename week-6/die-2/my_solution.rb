# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: Create a new Die by feeding it an set of labels, these could
# 	be either strings or integers. 
# Output: 
#  	For the 'initialize' method:
#  	   This is the creation of a new Die so it describes the Die in terms
# 	   of its number of sides and the labels that are on the sides
# => Steps: 
# =>    Make sure there are labels to work with. If not, raise an error
# =>    Create an instance variable to hold the list of labels
# =>    Create an instance variable to hold the number of sides

#  	For the 'sides' method:
# 	   Reports the number of sides of the Die
# => Steps:
# =>    Return the instance variable we've already created

#  	For the 'roll' method:
# 	   Returns a random label from the list of possible labels
# => Steps:
# =>     Create a new instance variable to hold the label rolled
# =>     Randomly choose one of the labels



# Initial Solution

# class Die
#   def initialize(labels)
#   	raise ArgumentError, "Please give me some labels" unless labels.length >= 1
#   	@labels = labels
#   	@sides = @labels.length
#   	# puts labels[rand(labels.length-1)]
#   end

#   def sides
#   	@sides
#   end

#   def roll
#   	@roll = @labels[rand(@labels.length)]
#   end
# end


# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError, "Please give me some labels" unless labels.length >= 1
  	@labels = labels
  	@sides = @labels.length
  end

  def sides
  	return @sides
  end

  def roll
  	return @roll = @labels[rand(@sides)]
  end

end



# good_labels=['a','b','c','d','e','f','g','h','i','j']
# test_die=Die.new(good_labels)
# puts test_die.sides
# puts test_die.roll


# bad_labels=[]
# test_die=Die.new(bad_labels)



# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of 
implementation? Did you need to change much logic to get this to work?
	I didn't have to change much from last week. Just had to make up a new variable for
	@labels and feed that to the roll method so that it would produce the label at a random
	index in the @labels array.


What does this exercise teach you about making code that is easily changeable or modifiable? 
	It makes me appreciate the importance of clear code and DRY. It would have been a pain if 
	I'd had to spend a lot of time figuring out what all the parts were rather than just 
	reading them by their names.

What new methods did you learn when working on this challenge, if any?
	I didn't want to just copy my original Die class but just started from scratch. So, 
	naturally, I made the same error with raising the ArgumentError (forgot the comma). I 
	PROBABLY won't do it a third time but it's frustrating to do the same dumb thing over and
	over again.

What concepts about classes were you able to solidify in this challenge?
	I'm continuing to get clearer on how instance variables work. I had forgotten to make one
	for labels, initially, so my roll method didn't work at first.	

	
=end