// PERSON 5 

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

// User Stories:

/*
1. As a user, I want a function that takes a set of 
numbers and gives me the sum of all the numbers.

2. As a user, I want a function that takes a set of 
numbers and calculates the mean for all the numbers.

3. As a user, I want a function that takes a set of
numbers and calculates the median of all the numbers.
If the amount of numbers is odd, it should give me 
the middle number. If the amount of numbers is even, 
it should average the two middle numbers and give me
that number.
*/


