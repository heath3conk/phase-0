// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Kathryn Garbacz
// This challenge took me 3 hours.

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

/*
Pseudocode:

working from the inside out: 
input: ticket object for each student that tells you who they voted for in each office
output: a property in voteCount for each office that contains the names of the people who 
  received at least one vote for that office and the total votes for each of the names
  
Steps:
 iterate over the hash/object votes
 pull out the 'president' vote for each student and see if that name already exists in the
   voteCount 'president' object. 
      if it does increment the tally of votes for that name
      if it doesn't exist, add that name to the property 'president' with a value of 1
 repeat for the other offices
 
 
 for each office in voteCount, find the name with the most votes and update the 
   value for that property in the officers object with that name


*/

//_________________________________________
// Initial Solution


// Tally the votes in voteCount.
// var voteCount = {
//   president: {},
//   vicePresident: {},
//   secretary: {},
//   treasurer: {}
// }

// for (var voter in votes) { 
//   var ticket = votes[voter]; 
//   // console.log(ticket);

//   for (var office in ticket) { 
//     var candidate = ticket[office]; 
//     // console.log(candidate);
  
//    if(voteCount[office].hasOwnProperty(candidate)) {
//       voteCount[office][candidate] ++;
//   }

//     else voteCount[office][candidate] = 1;
    
//   };

// };
// // if (candidate exists in voteCount.president) {


// // console.log(voteCount);

// /* The name of each student receiving a vote for an office should become a property
// of the respective office in voteCount.  After Alex's votes have been tallied,
// voteCount would be ...
//   var voteCount = {
//     president: { Bob: 1 },
//     vicePresident: { Devin: 1 },
//     secretary: { Gail: 1 },
//     treasurer: { Kerry: 1 }
//   }
// */
// var officers = {
//   president: undefined,
//   vicePresident: undefined,
//   secretary: undefined,
//   treasurer: undefined
// }


// for (var office in voteCount){//only gets the name of the office
//   var candidates = voteCount[office];//gets the names of the candidates for that office
  
//   var current_max = 1;
//   var winner = "";
//   for (var candidate in candidates){//only gets the name from candidates
//     var votes = voteCount[office][candidate]; //gets the number of votes for that candidate
//     if (votes > current_max){
//       winner = candidate;
//       current_max = votes;
//     }
//     officers[office] = winner;
//   };
  
// };

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */


// __________________________________________
// Refactored Solution

var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

for (var voter in votes) {
  var ticket = votes[voter];
  for (var office in ticket) {
    var candidate = ticket[office];
    (voteCount[office].hasOwnProperty(candidate)) ? 
      voteCount[office][candidate]++ : voteCount[office][candidate] = 1;
  };
};


var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

for (var office in voteCount){//only gets the name of the office
  var candidates = voteCount[office];//gets the names of the candidates for that office
  
  var current_max = 1;
  
  for (var candidate in candidates){//only gets the name from candidates
    var votes = voteCount[office][candidate]; //gets the number of votes for that candidate
    if (votes > current_max){
     var winner = candidate;
      current_max = votes;
    }
    officers[office] = winner;
  };
  
};




/*__________________________________________
// Reflection

What did you learn about iterating over nested objects in JavaScript?
  It's harder than I thought it would be! Once we had worked through the first half of the 
  challenge, we thought the second half would be simple. Apparently we hadn't quite
  internalized how to do this the way we thought. 

  I found it easiest to actually write down some kind of diagram to help me navigate through
  the objects.

Were you able to find useful methods to help you with this?
  The only built-in function we used was 'hasOwnProperty'. We tried using some methods that
  were for maps but couldn't make them work.

What concepts were solidified in the process of working through this challenge?
  For me, the easiest way to deal with these nested objects is to start with the innermost
  part firt, then build out to the outermost shell. I'm much better at keeping the 
  relationships between the objects and their properties straight that way.


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