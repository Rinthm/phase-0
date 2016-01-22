// JavaScript Olympics

// I paired with: Cody Kendall on this challenge.

// This challenge took us 1.5 hours.


// Bulk Up

var athletes = {name: ["Sarah", "Phelps"],
                event: ["Ladies Singles","Swimming"]};

function addWin(athletes){
  for (var i = 0; i < athletes.name.length; i ++)
   console.log(athletes.name[i] + (" won the ") + athletes.event[i]);
};

addWin(athletes)

  
// Jumble your words

var string = "Lets jumble our words";

function jumble(string){
  var stringArray = [];
  for(var i = 0; i < string.length; i++){
    stringArray.push(string[i])
  };
  console.log(stringArray.reverse().join(''))
};

jumble(string);
2,4,6,8


// var numbers = [1, 2, 3, 4, 5, 6, 7, 8];

function even(nums) {
  for (var i = 0; i < nums.length; i++)
    if (nums[i] % 2 === 0){
      console.log(nums[i])
    };
};

even(numbers);


// "We built this city"

var Athlete = function(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?

	I solidified my knowledge of 'for' loops in JavaScript. Also, proper syntax for 
	variables and functions.

What are constructor functions?

	Constructor functions are functions that are used to set up new objects with 
	the same type. 

How are constructors different from Ruby classes (in your research)?

	They are called with "new", and otherwise don't have special syntax. They create 
	a 'prototype object', but this object is just like any other object; there are no 
	differences in properties. Also, any object can be a prototype in JavaScript. This 
	is different from Ruby, where objects created in classes are unique to that class.