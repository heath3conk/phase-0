// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

console.log("HI!");
// Program Structure
// Write your own variable and do something to it.
var firstName = "Heather";
var fullName = firstName + " Conklin";
console.log(fullName);


// prompt("What is your favorite food?")
// alert("Hey! That's my favorite food too!")



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
/*
for (var number = 1; number <= 100; number ++) 
    if ( number % 3 == 0 && number % 5 == 0 )
    	console.log("FizzBuzz");
    else if ( number % 3 == 0 )
    	console.log("Fizz");
    else if ( number % 5 == 0 )
    	console.log ("Buzz");
    else
    	console.log(number);

*/
// Functions

// Complete the `minimum` exercise.

function min(number1, number2) {
	number1 >= number2 ? console.log(number2) : console.log(number1);
}

min(3,5)
min(4,4)
min(751,12)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Heather",
	age: 45,
	favorite_foods: ["chocolate", "chili", "homemade bread"],
	quirk: "I really like brussels sprouts",
}

console.log(me.name)