



// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Matt Harris.

// Pseudocode

// Input: An integer.
// Output: A string of the integer with appropriately places commas.
// Steps:
// Create an empty array
// Convert integer to string
// Iterate from last element of string
// Write a FOR loop
//   IF three numbers have been pushed
//     Push comma to array
//   ELSE
//     Push element to array
// Reverse and join the array
// Return the number with commas


// Initial Solution

function separateComma(num) {
  var output = [];
  num = String(num);
  for (var i = num.length - 1, j = 1; i > -1; i--, j++) {
    if (j % 3 === 0 && j != num.length) {
      output.push(num[i]);
      output.push(",");
      
    } else {
      output.push(num[i]);
    } 
  }
  output = output.reverse();
  output = output.join(""); 
  console.log(output);
}


// Refactored Solution

function separateComma(num) {
  num = String(num).split('').reverse();
  for (var i = 3; i < num.length; i += 4) {
     num.splice(i, 0, ",");
  }
  console.log(num.reverse().join(''));
}


// Driver Code

separateComma(10000000)
separateComma(1000000)
separateComma(100000)


// Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  We approached the problem in the same way, but we had to make some logical alterations due to differences in syntax.
  For example, we couldn't use #reverse on a string so we had to convert the number string to an array first.

What did you learn about iterating over arrays in JavaScript?
  
  It's essentially the same as Ruby, logically speaking. There are few differences in syntax as well.

What was different about solving this problem in JavaScript?
  
  Mostly just having to use different syntax/terms. We couldn't use #reverse on a string, so had to work around that.
  I was surprised at how similar it was to Ruby in terms of logic.

What built-in methods did you find to incorporate in your refactored solution?

  We found the #splice method that lets you choose where/what to input into an array. 
  You can also remove indexes if you so choose.
*/
