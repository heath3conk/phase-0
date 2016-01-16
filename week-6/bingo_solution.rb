# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 8 hours on this challenge (not counting thinking about it in the shower)


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# => Create an array that holds the letters
# => Randomly choose a letter from that group
# => Randomly choose a number between 1 and 100

# Check the called column for the number called.
# => Look in each of the inner arrays of the given board in the position
#    that matches the letter selected.
# =>   If the number at that position matches the number called, replace
#      it with an X
# =>   If the number does not match, move to the next inner array
# =>   *I'm assuming the board will not contain multiple matches*

# If the number is in the column, replace with an 'x'
  # not sure why this would be separate from the "check" method. Will see
  # how the coding goes...

# Display a column to the console
# => Label the colum with the letter called
# => Print the to the screen the element in each of the inner arrays that
#    are at the position corresponding to the letter

# Display the board to the console (prettily)
# => Print each inner array to the screen with a newline between them
# => The goal is for the columns to match up


# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end


#   def call
#     letters = ['b','i','n','g','o']
#     @letter_index = rand(letters.length)
#     @new_number = rand(1..100)
#     @call = [letters[@letter_index], @new_number]
#     call_pretty = (@call[0].upcase + @call[1].to_s)
#   end


#   def check(call)
#     for row in @bingo_board
#       if row[@letter_index] == @call[1]
#         row[@letter_index] = "X"
#         puts "Found it!"
#     else
#     	puts "No luck"
#       end
#     end
#   end


#   def show_board
#     for row in @bingo_board
#       for position in row 
#         print "#{position}\t"
#       end
#       print "\n"
#     end
#   end

# end


# #DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)
# puts new_game.call
# new_game.check(new_game.call)
# new_game.show_board



# Refactored Solution

class BingoBoard

  def initialize
  	b_array = Array.new
  	  while b_array.length < 5
  	    unless b_array.include?(new_num = rand(1..15))
  	   	  b_array << new_num
  	    end
  	  end

  	i_array = Array.new
  	  while i_array.length < 5
  	    unless i_array.include?(new_num = rand(16..30))
  	   	  i_array << new_num
  	    end
  	  end

  	n_array = Array.new
      while n_array.length < 5
  	    unless n_array.include?(new_num = rand(31..45))
  	   	  n_array << new_num
  	    end
  	  end

  	g_array = Array.new
      while g_array.length < 5
  	    unless g_array.include?(new_num = rand(46..60))
  	   	  g_array << new_num
  	    end
  	  end

  	o_array = Array.new
      while o_array.length < 5
  	    unless o_array.include?(new_num = rand(61..75))
  	   	  o_array << new_num
  	    end
  	  end

    @bingo_board = {
    	b: b_array,
       	i: i_array,
    	n: n_array,
    	g: g_array,
    	o: o_array
    	}
    
    @numbers_called = {
    	b: [],
    	i: [],
    	n: [],
    	g: [],
    	o: []}
  end


  def call
    number_factor = rand(0..4)
    letters = [:b, :i, :n, :g, :o]
    @letter_called = letters[number_factor]
    @new_number = rand((number_factor*15+1)..((number_factor+1)*15)

    @call_pretty = @letter_called.to_s.upcase + @new_number.to_s
    @numbers_called[@letter_called] << @new_number
    return @numbers_called
  
  end


  def check(call)
  	print "Checking #{@call_pretty}..."
  	if @bingo_board[@letter_called].include?(@new_number) != true
  		puts "no luck"
  	else
  		puts "FOUND IT!"
  		@bingo_board[@letter_called][@bingo_board[@letter_called].index(@new_number)] = "X"  		
  	end

  end


  def show_board
    column = 0
      while column <= 4
        @bingo_board.each { |row, position| 
        print "#{position[column]}\t"
        }
        print "\n" 
      	column += 1
      end
	  	  
  end


  def winner?
    @winner = false
 	
 	# check for winner vertically
 	@bingo_board.each_key { |column| 
 	  if @bingo_board[column].count("X") == 5
 	  	@winner = true
 	  end }

    # check for winner horizontally
    # if the :b array contains no Xs, there's no winner
    # if it does contain any Xs, find the position of the first X in that array
    #    check the other arrays to see if they also have Xs at that position
    
    # This won't work perfectly because the .index method only returns the first
    #    instance of X in the array and if there are others below that on the board
    #    it won't even look at those. So if there's an X in the top left corner and
    #    no other Xs in the top row but the third row is all Xs, it will incorrectly 
    #    return false. 
    #    I may come back to this later to make it work correctly but I've already
    #    spent WAY too much time on it!

    if @bingo_board[:b].include?("X") == true
    	position = @bingo_board[:b].index("X")
    	# puts "got a B at #{position}"
    	if @bingo_board[:i][position] == "X"
    		if @bingo_board[:n][position] == "X"
    			if @bingo_board[:g][position] == "X"
    				if @bingo_board[:o][position] == "X"
    					@winner = true
    				end
    			end
    		end
    	end
    end

    return @winner
  end


end

legal_board = BingoBoard.new
legal_board.show_board
50.times{legal_board.check(legal_board.call)}
legal_board.show_board
puts legal_board.winner?



=begin
#Reflection
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
	The pseudocoding wasn't too hard. I think it definitely helped me figure out how to
	accomplish what I needed to do. 

	Naturally, I think my pseudocoding style works well. I find it easier to walk through the
	input-output-steps process for each method rather than making one single pass through for 
	the whole class.

What are the benefits of using a class for this challenge?
	I can have a bunch of different actions all working on the same board and choose which of
	them I want to call without having to feed Ruby the board as an array (assumming I've 
	initialized it).

How can you access coordinates in a nested array?
	name_of_outer_array[position_of_inner_array][position_IN_inner_array][etc.]

	Basically, it's a series of calls to the array using the index inside square brackets. The
	first index is the position of the inner array within the outer array, the next is the 
	position inside the inner array...and you can keep going for as many layers of arrays as 
	there are in the initial array.

What methods did you use to access and modify the array?
	In the refactored solution, I used:
	.include in the initialize method to make sure the board doesn't have repeated numbers.
	   Also in the check method to...check.
	In the check method, I looked into the arrays that were values in the hash using []
	.each in the show_board method to move throug the hash & array and display the numbers
	.each_key in the winner? method and .count to look at each array in the hash and count
	   the Xs
		

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you
see in the docs, what purpose does it serve, and how is it called?
	I hadn't used .index before. You call it on an array and it takes a single argument. 
	It returns the index of the array at which the argument is located. For example, if you
	had numbers=[1,2,3,4,5] and wanted to know the position of 4, you'd call numbers.index(4) 
	and it would return 3. (If the array doesn't contain the argument you feed it, .index 
	returns nil.)

How did you determine what should be an instance variable versus a local variable?
	I used instance variables when I needed to be able to use that value in more than one
	method, such as @bingo_board or @call_pretty. When I only used a variable in one method,
	I made it a local variable, like position in the winner? method.

What do you feel is most improved in your refactored solution?
	I'm pretty happy with my winner? method. I decided to do it early in the week and kept 
	thinking about how to make it work (and changing how that might be) until Friday. It's 
	definitely not perfect but it does almost what I had envisioned. 

	I also liked making the legal board. It felt like cheating to have new boards filled 
	all willy-nilly with numbers up to 100. 

	Also, as I was typing this reflection, I came up with a refactored solution to the call
	method that cut it about in half!

=end