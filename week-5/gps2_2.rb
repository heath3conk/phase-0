# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a new hash
    # key - item name
    # value - quantity    
  # iterate over items
    # add as keys
    # assign default quantity of 1
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: 
  # Hash = {item: quantity}

def create_list(items="")
  initial_list = items.split 
  grocery_list = Hash.new
  initial_list.each { |item| grocery_list[item] = 1 }
  return grocery_list
end


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
#   check to see if the item is already in the list
#     if it is in the list, update the quantiy
#     if it's not in the list, add it
# output:
  # Hash = {item: quantity}

def add_item(list, item, quantity = 1)
  list [item] = quantity
  return list
end



# Method to remove an item from the list
# input: item 
# steps: 
#  Remove item from hash
# output:
# Updated hash

def remove_item(list, item_to_remove)
  list.reject! { |item, quantity| item == item_to_remove }
  return list
end


# Method to update the quantity of an item
# input: item name and optional quantity
# steps:
#   check to see if the item is already in the list
#     if it is in the list, update the quantiy
#     if it's not in the list, add it
# output:
# Hash = {item: quantity}

def update_item(list, item_to_update, new_quantity)
  list[item_to_update] = new_quantity
  return list
end



# Method to print a list and make it look pretty
# input: hash
# steps:
#  print all of the items and quantities within the array
# output:
#   items and quantities
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
