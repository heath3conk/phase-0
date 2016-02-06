/*
User stories:
Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)


Pseudocode:
Create an empty list
Create a way to add an item to the list that includes the name of the
  item, a quantity and unit of quantity (pounds, quarts, etc.) and category
  - if the item already exists on the list, update the quantity on the list
    to the new value
  - otherwise, add the item to the list with the quantity, units & category
  - the goal is to hold items wihtin the list in the following form:
	  apples: {
		quantity: 6,
		units: each,
		category: produce
  	  },
  - there are no default values for quantity, units or category. Items may
    be added without those arguments, leaving them undefined. 
Create a way to remove an item from the list
*/

var grocery_list = {

  add_item: function add_item(name, quantity, units, category) {
  	if(grocery_list.hasOwnProperty(name)) {
  		grocery_list[name]["quantity"] = quantity;
  	}
  	else {
  	grocery_list[name] = {};
  	grocery_list[name]["quantity"] = quantity;
  	grocery_list[name]["units"] = units;
  	grocery_list[name]["category"] = category;
    }
  },

  remove_item: function remove_item(name) {
  	delete grocery_list[name];
  },

  print_list: function print_list() {
  	for (item in grocery_list) {
  		if (item != "add_item" && item != "remove_item" && item != "print_list") {
  		console.log(grocery_list[item]["quantity"] + " " + grocery_list[item]["units"] 
  			+ " " + item + " in " + grocery_list[item]["category"]);
  		}
  	}
  }
};  


grocery_list.add_item('apples',6,'each','produce');
grocery_list.add_item('Cheerios',1, 'box', 'cereal');
grocery_list.add_item('garbage bags', 1, 'box', 'household');
grocery_list.add_item('apples',12);
grocery_list.remove_item('Cheerios');
grocery_list.print_list();

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  It was good to have to come up with a way to do something in JavaScript that I had already done in Ruby.
  I had to review the .hasOwnProperty function and figure out how to get the name of the item to appear in the 
  object the way I wanted (not as a string). So it was a good review of the difference between [name] and ["name"].

What was the most difficult part of this challenge?
  I tried to get this working on my website. Spent several hours with the Codecademy jQuery module and then several more
  trying to get the code to produce what I wanted. I got stuck when I couldn't figure out how to make JQuery take information
  from my HTML <form> element and turn it into values I could then add to a table on the page. I got the adding done but only 
  with static data, not with the stuff input into the form. 

Did an array or object make more sense to use and why?
  I used an object because I wanted to capture more than just the name of the item to add to the list. By making each item its
  own object, I could give it properties like quantity and so on.
*/