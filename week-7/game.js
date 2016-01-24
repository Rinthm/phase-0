 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: In a post-apocalyptic world set in the near future,
// you are humanity's last hope! You find yourself in a one-on-one duel with
// Overlord Trump, and you must defeat him!
// Overall mission: Defeat Overlord Trump
// Goals: Use your different attacks to defeat Overlord Trump before he defeats you.
// Beware, more powerful attacks will leave you more vulnerable if you miss, and you
// will lose more health from Overlord Trump's retaliation!
// Characters: Player, Overlord Trump
// Objects: Player(name, health), Trump(name, health)
// Functions: attack(type), punch, kick, removeTupee, moves, gameStatus

// Pseudocode
// Declare 'player' and 'trump' objects that have properties of 'name' and 'health'.
// Define an 'attack' function that allows for different types of attacks.
// Define functions for each type of attack that have the following qualitites:
// 	-Generates a random number for 'player' and 'trump'.
// 	-IF 'player' number is greater than 'trump' number, the attack is successful and 'trump' loses health.
// 	-IF the reverse is true, the attack misses and 'player' loses health.
// 	-Health lost is dependent on attack type.
// Define a 'gameStatus' function that checks if 'player' or 'trump' has run out of health. 
// 	-The player wins if Overlord Trump runs out of health first.
// 	-Overlord Trump wins if the player runs out of health first.

// Initial Code

// var player = {
// name: "Aaron",
// health: 100
// }

// var trump = {
// name: "Overlord Trump",
// health: 100
// }

// function moves() {
// console.log("Your available moves are:");
// console.log("'punch': 10 damage -- 10 lost");
// console.log("'kick': 30 damage -- 30 lost");
// console.log("'remove toupee': 50 damage -- 50 lost");
// console.log("You must enter each attack exactly as it is listed!")
// }

// function punch() {
// var playerRoll = Math.random();
// var trumpRoll = Math.random();
//   if(playerRoll >= trumpRoll) {
//     console.log("You punched " + trump.name + " for 10 damage!");
//     trump.health -= 10;
//   }else{
//     console.log("Your punch missed! " + trump.name + " counters for 10 damage!");
//     player.health -= 10;
//   }
// }

// function kick() {
// var playerRoll = Math.random();
// var trumpRoll = Math.random();
//   if(playerRoll >= trumpRoll) {
//     console.log("You kicked " + trump.name + " for 30 damage!");
//     trump.health -= 30;
//   }else{
//     console.log("Your kick missed! " + trump.name + " counters for 30 damage!");
//     player.health -= 30;
//   }
// }

// function removeToupee() {
// var playerRoll = Math.random();
// var trumpRoll = Math.random();
//   if(playerRoll >= trumpRoll) {
//     console.log("You removed " + trump.name + "'s toupee for 50 damage!");
//     trump.health -= 50;
//   }else {
//     console.log("You missed the hairpiece! " + trump.name + " counters for 50 damage!");
//     player.health -= 50;
//   }
// }

// function attack(type) {
//   if(type === 'punch') {
//     punch();
//     gameStatus();
//   }else if(type === 'kick') {
//     kick();
//     gameStatus();
//   }else if(type === 'remove toupee') {
//     removeToupee();
//     gameStatus();
//   }else{
//     console.log("That is not a valid attack!");
//     moves();
//   }
// }

// function gameStatus() {
// console.log("You have " + player.health + " health left.")
// console.log(trump.name + " has " + trump.health + " health left." )
//   if(player.health <= 0) {
//      console.log("You have been defeated! The world will never be safe from Overlord Trump's reign!");
//    }else if(trump.health <= 0) {
//      console.log("You've done it! Overlord Trump has been defeated! The name '" + player.name + "' will forever be remembered as the hero who defeated the treacherous Overlord Trump! Humanity is safe! For now...");
//    }
// }



// Refactored Code

var player = {
	name: "Aaron",
	health: 100
}

var trump = {
	name: "Overlord Trump",
	health: 100
}

// Let's set the mood, shall we? :)
function play() {
	console.log("Hail, brave soul!\n");
	console.log("You find yourself in a post-apocalyptic world set in the near future. Overlord Trump has caused mass terror since he came to power, and you may be humanity's last hope! You have finally come face to face with the treacherous Overlord and must fight to the death!\n");
	console.log("Attack Overlord Trump by using 'attack(type)', where 'type' is the desired type of attack. Beware! If you miss an attack, Overlord Trump will retaliate and do the damage to you!\n");
	moves();
	console.log("Good luck! The future of humanity depends on you!\n");
}

function moves() {
	console.log("Your available attacks are:");
	console.log("'punch': 10 damage");
	console.log("'kick': 30 damage");
	console.log("'remove toupee': 50 damage");
	console.log("You must enter each attack exactly as it is listed!\n");
}

function punch() {
	console.log("You take a mighty swing at " + trump.name + "'s smug face...");
	var playerRoll = Math.random();
	var trumpRoll = Math.random();
  if(playerRoll >= trumpRoll) {
    console.log("You hit " + trump.name + " for 10 damage!");
    trump.health -= 10;
  }else{
    console.log("You missed! " + trump.name + " counters for 10 damage!");
    player.health -= 10;
  }
}

function kick() {
	console.log("You try to hit " + trump.name + " with a crazy roundhouse kick...");
	var playerRoll = Math.random();
	var trumpRoll = Math.random();
  if(playerRoll >= trumpRoll) {
    console.log("You hit " + trump.name + " for 30 damage!");
    trump.health -= 30;
  }else{
    console.log("Your kick missed! " + trump.name + " counters for 30 damage!");
    player.health -= 30;
  }
}

function toupee() {
	console.log("Well aware that " + trump.name + "'s main source of power is his toupee, you try to grab it...");
	var playerRoll = Math.random();
	var trumpRoll = Math.random();
  if(playerRoll >= trumpRoll) {
    console.log("You removed " + trump.name + "'s toupee for 50 damage!");
    trump.health -= 50;
  }else {
    console.log("You missed the hairpiece! " + trump.name + " is enraged and counters for 50 damage!");
    player.health -= 50;
  }
}

function attack(type) {
  if(type === 'punch') {
    punch();
  }else if(type === 'kick') {
    kick();
  }else if(type === 'remove toupee') {
    toupee();
  }else{
    console.log(type + " is not a valid attack!");
    moves();
    return
  }
  status();
}

function status() {
	console.log("You have -" + player.health + "- health left.")
	console.log(trump.name + " has -" + trump.health + "- health left.\n" )
  if(player.health <= 0) {
     console.log("You have been defeated! The world awaits another hero to end " + trump.name + "'s terror!");
   }else if(trump.health <= 0) {
     console.log("You've done it! Overlord Trump has been defeated! The name '" + player.name + "' will forever be remembered as the hero who defeated the treacherous Overlord Trump! Humanity is safe! For now...");
   }
}


// Driver Code

play()
attack('punch')
attack('wedgie')

// Reflection
//
//
//
//
//
//
//
//