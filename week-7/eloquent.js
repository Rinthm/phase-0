// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var double_me = 3
console.log(double_me * 2)

// Favorite Food program

prompt("What is your favorite food?")
alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle
for (var make_triangle = '#'; make_triangle.length <= 7; make_triangle += '#')
	console.log(make_triangle);

// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
	return Math.min(num1, num2);
}

console.log(min(3, 9))
console.log(min(9, -3))
console.log(min(3, 3))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Aaron",
	age: 25,
	favorite_foods: ["Mushrooms", "Pasta", "Pizza"],
	quirk: "I like to do things in multiples of three!"
};

console.log(me)