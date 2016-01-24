/*
PERSON 1: USER STORIES

1. 	As a user, I want to have a function called 'sum' that takes a set of 
	numbers and adds them up, producing their total as its output.

2.	As a user, I want to have a function called 'mean' that takes a set of
	numbers and calculates their average.

3.	As a user, I want to have a function called 'median' that takes a set
	of numbers and finds its median. (Since fifth grade was a while ago for me, 
	I looked this one up to get the specific definition of median and here's 
	what it says on www.mathisifun.com: "to find the median, place the numbers 
	you're given in order and find the middle number. If there are two middle 
	numbers, you average them.")

Note: each of these has to work regardless of how many numbers you're 
looking at, whether it's an even number or odd number of numbers.

*/

// Refactored code:

// Simplified variable names and sum.
function sum(array){
  // This works thanks to ECMAScript 6!
  var total = array.reduce((a, b) => a + b, 0); 
  return total;
}

// Got rid of total_sum variable.
function mean(array){
  var average = sum(array) / array.length;
  return average;
}

// Cleaned up some variables that weren't necessary and reduced steps by altering calculations and rearranging if statement.
function median(array) {
  array.sort(function(a,b){return a-b});
  var half = Math.floor(array.length / 2)
  // This is equivalent to "if (array.length % 2 != 0)" because 0 evaluates to 'false' in JS.
  if (array.length % 2){ 
    return array[half];
  }else{
    return (array[half - 1] + array[half]) / 2;
  }
}

/*

Summary: 

Passed all the tests! Accountability Group 8 rocks.

*/