
// Add the finished solution here when you receive it.
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

//Driver Code:

// var nums = [-1, 0, 1, 2, 3, 3.5, -3]
// console.log(sum(nums))
// console.log(mean(nums))
// console.log(median(nums))


// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)