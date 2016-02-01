
// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Emily Bosakowski
// This challenge took us 4 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// input - A data structure that links the name of a person to their voter ballot. Each ballot is a data structure in itself, linking an office to the name of the candidates the voter is voting for

// Loop through each voter name on the inputted structure
//   loop through each individual vote (for each position) on the ballot
//      identify the office/position in that particular vote, and the candidate
//      assign that vote to another data structure that stores the vote counts for each office
//     IF the candidate's name is not in the structure for that position
//         add the name as a new item, and insert 1 as the count
//    ELSE IF the candidate's name is already in the structure
//          add one to the count of votes the candidate received for that office
// return a data structure that is a list of offices, and each office points to a list of candidate names and the number of votes each candidate received      
// Take that data structure and loop through each office at a time
//    FOR each office, find the name of the candidate that is linked to the largest number of votes
//    Write that candidate's name to another data structure that stores the winners of the office
// return data structure of winners as the output

// output - A data structure that links an office in Student Government to the name of the person who received the most votes for that office

// __________________________________________
// Initial Solution

for (var voter in votes) {
  if (votes.hasOwnProperty(voter)) {
    var ballot = votes[voter];
    for (var vote in ballot) {
      if (ballot.hasOwnProperty(vote)) {
        var candidate = ballot[vote];
        var numberOfVotes = [];
        if (voteCount[vote][candidate]) {
          voteCount[vote][candidate] += 1;
        } else {
          voteCount[vote][candidate] = 1;
        }
      }
    }
  }
}

for (var offices in voteCount) {
  if (voteCount.hasOwnProperty(offices)) {
  var numberOfVotes = 0;
  var candidate = voteCount[offices];
    for (var name in candidate) {
      if (candidate.hasOwnProperty(name)) {
        var votes = candidate[name];
        if (numberOfVotes < votes) {
          numberOfVotes = votes;
          officers[offices] = name;
        } 
      }
    }
  }
}


// __________________________________________
// Refactored Solution

for (var voter in votes) {
  var ballot = votes[voter];
  for (var vote in ballot) {
    var candidate = ballot[vote];
    if (voteCount[vote][candidate]) {
      voteCount[vote][candidate] += 1;
    } else {
      voteCount[vote][candidate] = 1;
    }
  }
}

for (var offices in voteCount) {
  var numberOfVotes = 0;
  var candidate = voteCount[offices];
  for (var name in candidate) {
    var votes = candidate[name];
    if (numberOfVotes < votes) {
      numberOfVotes = votes;
      officers[offices] = name; 
    }
  }
}

// __________________________________________
// Driver Code

console.log(voteCount)
console.log(officers)

// __________________________________________
// Reflection

/*
What did you learn about iterating over nested objects in JavaScript?

  I learned that it is VERY important to keep track of variable names. It is
  very easy to get lost in the for loops, especially with confusing/unclear
  variable names.

Were you able to find useful methods to help you with this?

  We unfortuntately didn't find any methods that we could use. We had to throw 
  in the towell after about 4 hours of working on the challenge. We thought
  about using the Math.max() method, but couldn't figure out a way to pass all
  the values in a way that would work properly.

What concepts were solidified in the process of working through this challenge?

  Accessing nested properties/values was solidified while working on this
  challenge, yet I still think I need more practice to really get it down.
*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)