# The homework cheater asks the user to choose from a short list of people (the input)
# and it produces a (very) short essay about the person selected

# Pseudocode:
#  - Print a list of people to the screen
#  - Ask the user to type the number of the person they want to know more about
#  - Use the number provided to choose an array of information
#  - Provide the array selected to a method that produces the essay
#    		- this method has some stock sentences that go into the essay
#    		- the array itself provides other, more specific sentences for the output
#  - Print the essay to the screen

def write_essay(array)
	# name = array[0]
	# birth_year = array[1]
	# occupation = array[2]
	# feat = array[3]
	# other_feat = array[4]
	# death_year = array[5]
	# if array[6] == "female"
	# 	pronoun = "she"
	# else
	# 	pronoun = "he"
	# end

	# puts "#{name} was born on January 3 in #{birth_year}." 
	# puts "#{pronoun.capitalize} was a #{occupation}."
	# puts "One of the most notable things #{pronoun} did was to #{feat}."
	# puts "#{pronoun.capitalize} also #{other_feat}."
	# if death_year != ""
	# 	puts "#{name} died in #{death_year}."
	# else
	# 	puts "#{name} turned #{2016-birth_year.to_i} years old this year."
	# end
	if array[6] == "female"
		pronoun = "she"
	else
		pronoun = "he"
	end
	puts array[0] + " was born on January 3 in " + array[1] + "."
	puts "#{pronoun.capitalize} was a " + array[2] + "."
	puts "One of the most notable things #{pronoun} did was to " + array[3] + "."
	puts "#{pronoun.capitalize} also " + array[4] + "."
	if array[5] != ""
		puts array[0] + " died in " + array[5] + "."
	else
	 	puts array[0] + " turned " + (2016-array[1].to_i).to_s + " years old this year."
	end

end

puts "Who would you like to learn about?"
puts "Type \'1\' for Lucretia Mott"
puts "Type \'2\' for Cicero"
puts "Type \'3\' for J.R.R. Tolkien"
puts "Type \'4\' for Danica McKellar"
answer = gets.chomp

# arrays' contents, in order:
# 	name
# 	birth year
# 	occupation
#  	notable feat
#  	other notable feat
# 	death year
# 	pronoun

array_1 = ["Lucretia Coffin Mott", "1793", "women's rights activist, abolitionist, and social reformer", 
	"attended the World Anti-Slavery Convention in London in 1840, where women delegates were segregated from men and not allowed to participate publicly", 
	"helped write the \'Declaration of Sentiments\' at the Seneca Falls Convention for women's rights in 1848", 
	"1880", "female"]

array_2 = ["Cicero", "106 BCE", "Roman philosopher, politician, and orator", 
	"write letters since their rediscovery is often credited for initiating the 14th century Renaissence in public affairs, humanism and classical Roman culture", 
"thwarted a conspiracy in 63 BCE intent on assassinating him and overthrowing the Roman Republic","43 BCE","male"]

array_3 = ["J.R.R. Tolkien", "1892","writer, poet, philologist and professor", "write several books about a place he called \'Middle Earth\', which featured hobbits, elves, dwarves and other fantastic creatures",
"invented several complete languages to use in his books (some linguists believe he wrote the books in order to have characters who would speak his languages)",
"1973","male"]

array_4 = ["Danica McKellar", "1975", "mathematician, writer and actress", "write books that make math more accessible and help students, particularly girls, to gain confidence in math",
	"gained fame as an actor in the TV series \'The Wonder Years\'", "","female"]


if answer == "1"
	write_essay(array_1)
elsif answer == "2"
	write_essay(array_2)
elsif answer == "3"
	write_essay(array_3)
elsif answer == "4"
	write_essay(array_4)
else
	puts "Sorry, I didn't understand your answer."
end
	
