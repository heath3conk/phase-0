=begin
Pseudocode
 
Input: List of people, presumably in the form of an array
Output: List of groups and the people assigned to each one

Steps:
	
	First: Determine the usual group size and how many, if any, groups of 3 you'll have
	Figure out if the number of people is evenly divisible by 5
		If so, set the group size to 5
		If not, figure out if the number of people is evenly divisible by 
			If so, set the group size to 4
			If not, set a counter to 1 and subtract 3 from the original number of people
				Test dividing by 5 again (and 4 if 5 isn't even)
				If the new number of people is still not evenly divisible by 5 or 4
					Subtract 3 again
					Increment the counter
					Test again

	Second: Assign people to the groups
		Randomly assign 3 people to however many groups are equal to your counter
			Set up a loop for as many 3-person groups as there will be
				Each loop is counted and the count is the group number
				Within the loop, randomly pop names from the list of people
				Assign each name as a key in a hash with the count of the loop as the value
		Randomly assign people to groups in quantities equal to your group size

	Third: Print the data in some logical way such as
		Group number: 	name
						name
						name
						name
		Group number: 	name, etc.

=end 

people = ["Dong Wook Seo (John)", "Aaron Hu", "Adam Pinsky", "Akeem Street", "Alex Forger", "Andrew Kim", 
	"Baron Kwan", "Brian Bier", "Byron Gage", "Carl Conroy", "Charlie Bliss", "Christopher Bunkers", "Cody Kendall", 
	"Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden", "Hagai Zwick", "Heather Conklin",
	"Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Jenna El-Amin", 
	"Jerrie Evans", "Joe Case", "Jonathan Case", "Jonathan Schwartz", "Jonathan Silvestri", "Kathryn Garbacz", 
	"Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Linda Oanh Ho", "Yiorgos Makridakis", "Matt Harris", 
	"Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", "Mollie Stein", "Lydia Nash", "Aaron Opsahl", 
	"Peter Leong", "Peter Stratoudakis", "Prince Sadie", "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken", 
	"EMMET SUSSLIN", "Sydney Rossman-Reich", "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", 
	"Tyler Doerschuk", "Amy Pond", "Rory Williams"]

def create_groups(list_of_people)
	
	list_length = list_of_people.length
	group_size = 0
	num_of_3s = 0

	while group_size == 0
		if list_length%5 == 0
			group_size = 5
		elsif list_length%4 == 0
			group_size = 4
		else 
			num_of_3s += 1
			list_length -= 3
		end
	end
	
	num_of_full_groups = list_length/group_size

	acct_groups = Hash.new
	group_number = 1
	randomized_list = list_of_people.shuffle!

	num_of_3s.times { |number| number = group_number 
		3.times { |name| name = list_of_people.pop
			acct_groups[name] = number
		}
		group_number += 1
	}

	num_of_full_groups.times { |number| number = group_number 
		group_size.times { |name| name = list_of_people.pop
			acct_groups[name] = number
		}
		group_number += 1
	}

	return acct_groups

end


def print_groups(group_list)
	group_num = 1

	while group_list.has_value?(group_num)
		puts "Group #{group_num}:"
		group_list.each { |name, group| 
			if group == group_num
				puts "   #{name}" 
			end
		}
		group_num += 1
	end


end

groups = create_groups(people)
print_groups(groups)

=begin
Notes on the optional complexity:
 - My method to create_groups will give different results each time it's run because I'm
   shuffling the list before I put people into groups.

 - You could easily store different outputs by changing the driver code. Here I've created
   a variable "groups" for my run-through but you could create another variable to call
   the create_groups method and then use that one as the argument for print_groups and you'd
   have a new record of group-assignment to file away.

 - If one person left the cohort, it might change only one group or require multiple changes
   I didn't write any code for this, but I could come up with a method that looks at whether
   the person who left was in a 3-member group or not. If not, then there's no need to re-
   assign anyone. If they were in a 3-person group, we could take one person from a larger
   group (let's say the group with the highest group number, since it will definitely be a
   larger group) and re-assign them to the group that lost a member.

 - I decided I was done when (a) I had all the people in my list assigned to a group and (b)
   I had a decently readable printout of all the groups. 

   In addition to the method for removing a person from the cohort (and therefore changing one
   or more groups), I could also see the need for a method to print just one group, rather than
   all of them and another method that would take a person's name and return the group number
   they've been assigned to. However, I've got four other things to work on in the next two 
   days so I'm not going to write those methods :)   

What was the most interesting and most difficult part of this challenge?
	The hardest thing for me - in this and other challenges - is recognizing when I've fallen
	into a rabbit hole and then deciding when/whether to get out of it. I feel like I spent more
	time than necessary on deciding how many 3-person groups and how many 4- or 5-person groups
	there would be. I'm not actually sure all that was necessary although I can't think of a
	better solution at the moment.

	Once I had gotten through that part though, I continued to fiddle with the problem of 
	assigning people to groups for an hour or two on Friday and then put it away and, sure 
	enough, Saturday morning I came up with a way to make it work the way I wanted it to. It's
	nice to know that sleep really DOES make things better!

Do you feel you are improving in your ability to write pseudocode and break the problem down?
	Yes. 

Was your approach for automating this task a good solution? What could have made it even better?
	It works. I'm usually pretty convinced that there's an easier way to do something than the way 
	I did it and this is no exception. In this case, I'll bet there's a better way to figure out how
	big the groups should be (4 or 5) and how many 3-person groups might be necessary. If I think of 
	it between now and Monday morning, I will probably change this...

What data structure did you decide to store the accountability groups in and why?
	A hash seemed most appropriate so that I could pair each name with a group number.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?	
	I hadn't used the ".times" type of loop before so that was good to try. The only other new Ruby methods 
	I used was to ".shuffle!" the list of people before putting them into groups. I'm definitely getting 
	more comfortable trolling through the Ruby docs to find what I need.
	

=end