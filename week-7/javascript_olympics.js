/// JavaScript Olympics

// I paired with: Emmet Susslin on this challenge.

// This challenge took me 2 hours.


// Bulk Up
var athlete1 = ["Helga","knife throw"];
var athlete2 = ["Norman","javeline toss"];
var athlete3 = ["Virgil","quick draw"];

var input = [athlete1, athlete2, athlete3];

// var win = function(array) {
//   for (var counter = 0; counter < array.length; counter++)
//     array[counter].push("won the");
//   for (var counter = 0; counter < array.length; counter++)
//     console.log(array[counter][0] + " " + array[counter][2] + " " + array[counter][1] + "!");
// }

var win_all_we_need = function(array) {
  for (var counter = 0; counter < array.length; counter++)
    console.log(array[counter][0] + " won the " + array[counter][1] + "!");
}

win_all_we_need(input);


// Jumble your words

var word = "hello";

var naiveReverse = function(string) {
    return string.split('').reverse().join('');
}
console.log(naiveReverse(word));


// // 2,4,6,8

var evens = function(array) {
  var ending_array = [];
  for (var counter = 0; counter < array.length; counter++)
    if (array[counter] % 2 == 0)
    ending_array.push(array[counter]);
      // (array[counter]).push(ending_array);
  return ending_array;
}

console.log(evens([1,2,3,4,5,6,7,8]));


// "We built this city"

function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;  
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


/*
// Reflection
What JavaScript knowledge did you solidify in this challenge?
	I'm getting more comfortable with creating and using functions. Also calling them in the
	driver code and making sure I get what I'm expecting when I do that.

What are constructor functions?
	These feel similar to classes in Ruby. Like classes, they are instantiated and each instance of the 
	constructor has values that are independent of other instances. Constructor functions can take 
	properties that are similar to the initialization methods in a Ruby class, so that the properties
	values can be passed in as arguments. Or, you can set values for properties by using the dot notation, 
	almost as if you were calling them. With the above constructor, you could change the value of 'age'
	by entering 'michaelPhelps.age = 30;'

	Constructors' properties can also include other functions (apparently, they're called 'methods' when 
	they're inside a constructor, just to make it more confusing). 

How are constructors different from Ruby classes (in your research)?
	There are a number of syntactic differences, like all the 'this' references in the JavaScript constructors and 
	the semicolons. 'this.name = name;' is similar in its effects to 'attr_accessor: name' in Ruby. 
*/
