# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: 
#  	One user creates a new game by supplying a number as the answer
#  	A second user supplies a number as a guess

# Output:
# 	The initialize method doesn't produce anything concrete; it sets up the game
# => Steps:
# =>   Create an instance variable and set it equal to the answer provided

# 	The guess method responds to a user's guess with a hint or "correct!"
# => Steps:
# =>    Compare the guess to the answer and respond with a hint
# =>        If guess equals answer, return "correct!"
# =>   		If guess is higher than answer, return high
# =>        If guess is lower than answer, return low

# 	The solved? method returns true or false depending on whether a user has 
#  	   guessed correctly yet.
# => Steps:
# =>     If the the guess method's value is "Correct!" then solved? is true
# =>     Otherwise, solved? is false


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess

#   	if @guess > @answer
#   		@response = :high
#   		# puts "Too high! Guess again."
#   		# guess(gets.chomp.to_i)
#   	elsif @guess < @answer
#   		@response = :low
#   		# puts "Too low! Guess again."
#   		# guess(gets.chomp.to_i)
#   	else
#   		@response = :correct
#   		# puts "Correct!"
#   	end
#   end


#   def solved?

#   	if @response == :correct
#   		return true
#   	else
#   		return false
#   	end
#   end


# end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end


  def guess(guess)
  	@guess = guess

    if @guess > @answer
  		@response = :high
  	elsif @guess < @answer
  		@response = :low
  	else
  		@response = :correct
   	end
  end


  def solved?
  	return @response == :correct ? true : false
  end


end

# my_answer = GuessingGame.new(7)
# my_answer.guess(5)
# puts my_answer.solved?




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors 
(actions) of a real-world object?
	The instance variables hold information about a specific representation of the
	generic object. For example, my driver code included the intiail answer of 7 Thanks 
	to the instance variable @answer, when I guess 5, the guess method will compare 5 to
	7 and not some other random number. 

When should you use instance variables? What do they do for you?
	As with real-world objects, certain aspects of a thing do not change. To use another
	example, if I have a Book class, I can define characteristics that are common to all
	books like title, author, publication date, number of pages, etc. Whenever I want
	to describe a particular book, I can give it a name and feed in its specfications. Then
	I can call methods on that book to do whatever I want to do with it. Maybe I want to
	alphebetize my books, I could create an array that's sorted by each one's @title.


Explain how to use flow control. Did you have any trouble using it in this challenge? 
If so, what did you struggle with?
	I thought this would be an ideal use for the case/when flow control (I've been dying to
	use that one, not sure why). But I couldn't get it to work...maybe it only likes equalities 
	and doesn't react well to < or >. Once I'd settled on the boring if/elsif block, it worked
	quite well.

	I did look up the ternary operator on Ruby docs and that gave me a little trouble until I
	figured out exactly where the word "return" should go.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	Symbols are accessible more quickly than strings, so using them saves time (not a noticeable 
	amount of time in this case). I think because symbols are immutable, I think it gives them 
	extra weight to someone reading the code. Basically, it says that these terms are not arbitrary.
	
=end