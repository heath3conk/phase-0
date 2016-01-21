/*
/ Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Tyler Doerschuk.

// Pseudocode

Input: a number
Output: the number as a string with commas to separate thousands

Steps:
 1. Create a function that accepts an integer as its argument
 2. Create a variable number_string and convert the integer to a string
 3. If the number_string length is less than 4, return the number_string
 4.    Else if create a loop
 5.      create a var shorter_string for the number_string
 6.      create an array to hold parts of the original number_string
 7.      slice the original string from back front in 3 character lengths and store each one in the array
 8.      save the shorter_string subtracting those same 3 characters
 9.      when shorter_string is less than 3 characters long, store it in the same array 
 (outside loop)
 10.     reverse array elements
 11.     insert commas between each elements
 12.     return interger to console


shorter_string = 1 000
shorter_string.slice(-3) = 000
shorter_string = shorter_string.slice(0,(shorter_string.length-3)).... 1

shorter_sting = 1 000 000
short_string.slice(-3)= 000

for (number_string = 4; number_string.length < )

array = ["000","1"]
*/


// Initial Solution
// function separate_comma(integer) {
//   var number_string = integer.toString();
// if (number_string.length < 4) {
//   console.log(number_string);
//   return number_string;}
// else {
//   var shorter_string = number_string;
//   var number_holder = [];
//   while(shorter_string > 4) {
//     var characters_remaining = shorter_string.length;
//     number_holder.push(shorter_string.slice(-3));
//     shorter_string = shorter_string.slice(0,characters_remaining-3);}
//   number_holder.push(shorter_string);
//   console.log(number_holder.reverse().join(","));
//   console.log(shorter_string);

// }
// }


// separate_comma(100)
// separate_comma(1000)
// separate_comma(1000000)

// Refactored Solution
function separate_comma(integer) {
  var number_string = integer.toString();
if (number_string.length < 4) {
  return number_string;}
else {
  var shorter_string = number_string;
  var number_holder = [];
    }
  
  for (var counter = 1; counter < (number_string.length/3); counter ++) {
  	var characters_remaining = shorter_string.length;
    number_holder.push(shorter_string.slice(-3));
    shorter_string = shorter_string.slice(0,characters_remaining-3);
   }
   number_holder.push(shorter_string);
   number_string = number_holder.reverse().join(",");
    
   return number_string;
 
}

console.log(separate_comma(100));
console.log(separate_comma(1000));
console.log(separate_comma(100000000));
console.log(separate_comma(108069408849846883989));


// Your Own Tests (OPTIONAL)




// Reflection