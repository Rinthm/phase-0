// Release 1: User Stories

/*
As a user, I want to:
-Create a new empty grocery list.
-Have the ability to:
	-Add new item/quantity pairs to the list.
	-Remove an item from the list.
	-Update the quantities for items on the list.
	-Print the list beautifully!
*/


// _______________________________________
// Release 2: Pseudocode

/*
-Create a constructor function, 'NewList'.

-Add an 'addItem' function to 'NewList' that accepts a string 'item' and an 
integer 'qty' as input and adds them to 'NewList'.
	-IF 'item' is already on the list,
		-Print a message letting the user know it's already on the list.
	-ELSE,
		-Add the item/quantity pair to the grocery list.

-Add a 'removeItem' function to 'NewList' that accepts a string 'item' as 
input.
	-IF 'item' is on the list,
		-Delete the item/quantity pair from the list.
	-ELSE,
		-Let the user know it's not on the list.

-Add an 'updateQty' function to 'NewList' that accepts a string 'item' and 
an integer 'qty' as input.
	-IF 'item' is on the list,
		-Replace the quantity with 'qty'.
	-ELSE,
		-Let the user know the item isn't on the list.

-Add a 'printList' function to 'NewList' that prints out the contents of 
'NewList' in an aesthetically pleasing way.
*/


// _______________________________________
// Release 3: Initial Solution

// function groceryList(item, qty) {
  
//   var list = {};
//   list[item] = qty;

//   groceryList.prototype.addItem = function(item, qty) {
//     if (item in list) {
//       console.log("That item is already on your grocery list!");
//     }else{
//       list[item] = qty;
//       console.log("You added " + qty + " " + item + "(s) to your grocery list!");
//     }
//   }
  
//   groceryList.prototype.removeItem = function(item) {
//     if (item in list) {
//       delete list[item];
//       console.log("You removed " + item + "(s) from your grocery list!");
//     }else{
//       console.log(item + " is not on your grocery list! Add it using the addItem function!");
//     }
//   }
  
//   groceryList.prototype.updateItem = function(item, qty) {
//     if (item in list) {
//       list[item] = qty;
//       console.log("You now have " + qty + " " + item + "(s) on your grocery list!");       
//     }else{
//       console.log(item + " is not on your grocery list! Add it using the addItem function!");
//     }
//   }
  
//   groceryList.prototype.printList = function() {
//     console.log("Your grocery list contains:");
//     for (var prop in list) {
//       console.log(list[prop] + " " + prop + "(s).");
//     }
//   }
// }


// _______________________________________
// Release 4: Refactor

function groceryList() {
  
  var list = {};

  groceryList.prototype.addItem = function(item, qty) {
    if (item in list) {
      console.log("'" + item + "' is already on your grocery list!");
    }else{
      list[item] = qty;
      console.log("You added " + qty + " " + item + "(s) to your grocery list!");
    }
  }
  
  groceryList.prototype.removeItem = function(item) {
    if (item in list) {
      delete list[item];
      console.log("You removed " + item + "(s) from your grocery list!");
    }else{
      console.log("'" + item + "' is not on your grocery list! Add it using the addItem function!");
    }
  }
  
  groceryList.prototype.updateItem = function(item, qty) {
    if (item in list) {
      list[item] = qty;
      console.log("You now have " + qty + " " + item + "(s) on your grocery list!");       
    }else{
      console.log("'" + item + "' is not on your grocery list! Add it using the addItem function!");
    }
  }
  
  groceryList.prototype.printList = function() {
    console.log("Your grocery list contains:");
    for (var prop in list) {
      console.log(list[prop] + " " + prop + "(s).");
    }
  }
}


// _______________________________________
// Driver Code

var newList = new groceryList();
newList.addItem("Banana", 3);
newList.addItem("Bean", 3);
newList.addItem("Banana", 8);
newList.removeItem("Banana");
newList.removeItem("Banana");
newList.addItem("Orange", 6);
newList.updateItem("Orange", 5);
newList.updateItem("Gumdrop", 5);
newList.printList();


// _______________________________________
// Release 5: Reflect

/*
What concepts did you solidify in working on this challenge? (reviewing the 
passing of information, objects, constructors, etc.)

	I solidified using the 'in' operator. I also solidified my knowledge of 
	prototypes and constructor functions. I really struggled through this one, so
	I think I'll still need some practice.

What was the most difficult part of this challenge?

	The most difficult part of this challenge was just getting the proper 
	JavaScript syntax and making sure I was iterating/accessing the right values.

Did an array or object make more sense to use and why

	An object made more sense to me because all of the items on the list would be 
	paired with quantities, so an object already assumes this relationship.


