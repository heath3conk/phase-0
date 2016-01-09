# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# 0. Pseudocode

# Input: driver code that creates a new Die object with some number of sides

# Output: depends on which method gets called:
	# - the INITIALIZE method returns a value for the number of sides
	# - the SIDES method should print the correct number of sides
	# - the ROLL method should print a random number between 1 and the number of sides

# Steps:
#  for the INITIALIZE method:
# 	  test whether the number provided is a whole number greater than or equal to 1
# 		if so, create an instance variable equal to the number provided in the method call
# 		if not, raise an ArgumentError

#  for the SIDES method: 
#  	  return the value of the instance variable sides

#  for the ROLL method:
#  	   return a random number between 1 and the number of sides given


# 1. Initial Solution

class Die
  def initialize(sides)
  	raise ArgumentError, "Your die needs to have at least 1 side!" unless sides > 1
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    @roll = rand(1..@sides)
    return @roll
  end
end

# test_success = Die.new(20)
# puts test_success.sides
# puts test_success.roll
# puts test_success.roll
# test_fail = Die.new(0)

# 3. Refactored Solution







# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
	It is an indication that there's a problem with the arguments provided. Here, I use one because I 
	need an argument that is greater than 1 (the instructions say we should raise the error only if the
	argument is less than 1 but a one-sided die is neither useful nor possible in a three-dimensional 
	universe). 

	We're raising this error explicitly, which means that we can define the circumstances under which it
	comes up and also provide text so the user can figure out what's wrong. The ArgumentError would also
	get raised if we tried to instantiate a new Die with no arguments or with more than one argument.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	The only new one (besides these three that we're writing) I used was the .rand method. At first, I
	implemented it using only a maximum value for the number of sides on the die but that was failing the
	test. Then I figured out that it was starting at 0 so I had to make its argument a range instead.

What is a Ruby class?
	A class is a definition of an object that also includes possible state(s) of the object and its
	behaviors. If I understand these correctly, our Die class has two states: initialized and sides. These 
	describe a particular instance of Die. There's only one behavior, roll. 

	We could have other states, like color or game (which would take as an argument the name of the game 
	to which this particular die belonged) or lost? (which would return a boolean value of true for most
	of the dice I've owned). We could also have other behaviors like shake (with an argument that builds
	in a delay when you call the roll method) or chased_by_cats (which also introduces a delay and the 
	possibility of changing the boolean result of lost?).

Why would you use a Ruby class?
	A class allows you to work with multiple similar objects without having to repeat code. I might have 
	ten games with dice and I'd want to be able to roll any of them whether they have 4 sides or 20 sides.

What is the difference between a local variable and an instance variable?
	A local variable has scope only within the method that defines it. An instance variable can be 
	referenced by other methods within the same class. In this example, the @sides variable is an instance
	variable in that we can use it in both the sides method and the roll method without having to redefine 
	it.

Where can an instance variable be used?	
	It looks like we can use instance variables throughout a class. They're only visible to the object 
	they belong to so we could not use @sides in a method outside of the Die class.


	
=end
