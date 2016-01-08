# Method to create a list
# input: 
#   String of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#   Create a new array, splitting the given string of items into elements of the array
#   Iterate over the elements of the array, putting them into a hash
# 		- key - item name
# 		- value - set default quantity of 1
# output: 
#   Hash = {item: quantity}

def create_list(items="")
  initial_list = items.split 
  grocery_list = Hash.new
  initial_list.each { |item| grocery_list[item] = 1 }
  return grocery_list
end


# Method to add an item to a list
# input: 
#   List, item name and optional quantity
# steps: 
#   Add the item provided to the list
#   If no quantity is provided in the arguments, assume the quantity is 1
# output:
#   Hash = {item: quantity}

def add_item(list, item, quantity = 1)
  list [item] = quantity
  return list
end



# Method to remove an item from the list
# input: 
#   List and item to be removed
# steps: 
#  	Remove item from hash
# output:
#   Updated Hash = {item: quantity}

def remove_item(list, item_to_remove)
  list.reject! { |item, quantity| item == item_to_remove }
  return list
end


# Method to update the quantity of an item
# input: 
#   Item name and quantity
# steps:
#   Overwrite the existing quantity for a given item with the new quantity provided
# output:
#   Hash = {item: quantity}

def update_item(list, item_to_update, new_quantity)
  list[item_to_update] = new_quantity
  return list
end


# Method to print a list and make it look pretty
# input: 
#   List of items and quantities (in a hash)
# steps:
#   Print all of the items and quantities on the list
# output:
#   Items and quantities

def print_list(list)
  list.each_pair{ |item, quantity| puts "#{item}: #{quantity}" }
end


test_list = create_list()
add_item(test_list,"Lemonade", 2)
add_item(test_list,"Tomatoes", 3)
add_item(test_list,"Onions", 1)
add_item(test_list,"Ice Cream", 4)
remove_item(test_list,"Lemonade")
update_item(test_list,"Ice Cream", 1)

print_list(test_list)

=begin
What did you learn about pseudocode from working on this challenge?
	My pair and I did all the pseudocode first and then started coding. This challenge was indeed
	challenging in that kept wanting to make our methods do more than they were supposed to do.
	So our initial pseudocode included a lot more for each method than the code ultimately
	contained. I've gone back and changed the pseudocode to reflect reality but this was a good 
	exercise in keeping things simple!

What are the tradeoffs of using Arrays and Hashes for this challenge?
	It's a question of what you are trying to do at any given point in time. We knew that the end
	result was going to be a hash because we wanted two pieces of information for everything: an
	item name and a quantity, basically a poster child for a hash. Then, for each interim step we 
	had to consider how we needed to access the data. 

	For example, we couldn't find any simple way to transfrom a space-separated string directly
	into a hash  so we put it into an array first and then filled in the hash from that array. Just
	about all the other methods were going to act on that hash. 

What does a method return?
	Whatever I tell it to! (*evil laugh*) Actually, I think that is pretty much true. The 
	default method return is whatever the last line in the method (before "end") does, but if
	I include an explicit "return" statement, that statement could be anything.

What kind of things can you pass into methods as arguments?
	Anything I want. Multiples of anything I want. In this challenge, we passed strings, integers, 
	hashes... In the reading so far I haven't seen anything about a limitation on this. 

How can you pass information between methods?
	I've only done this three times so far so I can really only say how WE did it in this specific
	challenge (and hope that this experience is applicable elsewhere). We used one variable, 
	"test_list" to do almost everything we needed to do here. When we initialized that variable, 
	we set it equal to the return value of our "create_list()" method. When we then used test_list
	as an argument elsewhere, as in the "add_item" method, that add_item method got the current contents
	of the variable...whether it was the first time calling add_item or the third time. 

	I may not be explaining this well, but I'm thinking of this challenge as building a box (the gps2_2.rb
	file itself) that holds all the various methods in their individual boxes and also contains this 
	variable. We can change the variable by putting into a particular method's box and then we can take 
	it and feed it to another box. We can do that in any order we want and as many times as we want. 

What concepts were solidified in this challenge, and what concepts are still confusing?
	The hardest thing at the beginning was keeping each method focused on JUST what the instructions said
	about it and not making it more complicated. 

	I think the biggest thing I'm taking away from this one is how to hold that variable separate from the
	method(s)...scope, I guess. I won't say I've got it down completely, but it is becoming clearer.

=end