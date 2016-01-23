/* Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Guess the word before the hangman is complete
// Goals: Guess letters and use their position in the word to guess the full word
//  	  Avoid incorrect guesses.
// Characters: player, scaffold (cue spooky music)
// Objects: scaffold, word, correct guesses, incorrect guesses
// Functions: choose_word, guess_letter, examine_word(word,letter),display_result()

// Pseudocode
 Pre-game setup: Create common variables & objects
    Create an object 'scaffold' that displays first a empty scaffold, then adds a head, then an arm,
      etc. until the entire person is hanging there. 
    Create a counter called 'letter_index' and set it to zero.
    Create a variable that holds a list of all the letters of the alphabet, in order of their 
      frequency in words, with the most frequent first to least frequent (per
      http://www.math.cornell.edu/~mec/2003-2004/cryptography/subs/frequencies.html).
    Create a counter called 'incorrect_guess_count' and set it equal to zero.
    Create an object 'incorrect_guesses' that will hold all the letters that are not in the word.
    Create an object 'unsolved_word' that will hold the current state of the partially unsolved word 
      (so, all blanks at first, then filling in the letters as they're guessed).
	
Run a game: 
Start a new game:
    Create a letter_index and set it to zero.
    Create a variable called 'game_word' and set it equal to the return value of the 'choose_word' 
    function (ie. invoke the 'choose_word' function)

    choose_word function:
		Create a variable that holds a list of long (9-letter) words.
    	Create a variable that holds a list of short (6-letter) words.
    	Randomly decide whether to use the list of short words or long words.
		Create a variable that chooses a random number between 0 and 25.
		Use that random number to choose a word from the list.
		Split the word into its individual characters and save them as an array
	
	Invoke the setup_word function:
		Count the letters in the 'game_word' array and store an equal number of blanks in the 
		  'unsolved_word' array.
		Display a message on the screen to tell the player how many letters are in the word. 


Play a turn:
	Invoke the guess_letter function
		Choose the letter at the current letter_index from the letters_by_frequency list 
	 	Display the letter
	Invoke the examine_word function (takes the game_word and a letter as arguments)

		Note: I'm calling this the game_word to emphasize (a) that it will be the same one throughout
		the duration of the game and (b) that it will be a new one each time the choose_word() function
		is invoked. 

		Create a variable 'letters_found' to track the number of instances in the game_word that the letter appears
		Create an array 'found_at' to track the position(s) within the game_word array at which the letter appears
		Iterate over the game_word array:
			If the letter is found in the array, 
			  increment the 'letters_found' counter.
			  add the index at which it was found to the 'found_at' array.
		If the 'letters_found' counter still = 0 after looking through the whole game_word array:
			Increment the 'incorrect_guesses_count' counter.
			Add this letter to the array of 'incorrect_guesses'.
			Display the state of the scaffold object with the current number of incorrect guesses.
		If the 'letter_found' counter is greater than 0:
			Add the letter to the 'unsolved_word' array at the appropriate index(es).
		Display the 'unsolved_word' as it currently exists (with previously guessed letters & blanks).
		Display all the previous 'incorrect_guesses'
		Invoke the 'game_over?' function.
		
	Invoke the game_over? function
		Create a variable 'game_over' and set it equal to false.
		If the 'incorrect_guesses_count' equals 8, change the 'game_over' value equal to true and 
		  display a message that says the player has lost.
		Else if the 'unsolved_word' array is equal to the 'game_word', change the 'game_over' value equal to
		  true and dipalay a message that says the player has won.

		Else no change to the value of 'game_over?' and invoke the 'examine_word' function with a new
		  'guess_letter' as it's argument.


*/

// Initial Code
var scaffold = {
  1: "  _________\n  |       |\n          |\n          |\n          |\n          |\n _________|_\n|           |",
  2: "  _________\n  |       |\n ( )      |\n          |\n          |\n          |\n _________|_\n|           |",
  3: "  _________\n  |       |\n ( )      |\n  |       |\n          |\n          |\n _________|_\n|           |",
  4: "  _________\n  |       |\n ( )      |\n \\|       |\n          |\n          |\n _________|_\n|           |",
  5: "  _________\n  |       |\n ( )      |\n \\|/      |\n          |\n          |\n _________|_\n|           |",
  6: "  _________\n  |       |\n ( )      |\n \\|/      |\n  |       |\n          |\n _________|_\n|           |",
  7: "  _________\n  |       |\n ( )      |\n \\|/      |\n  |       |\n /        |\n _________|_\n|           |", 
  8: "  _________\n  |       |\n ( )      |\n \\|/      |\n  |       |\n / \\      |\n _________|_\n|           |",
  
};

var letter_index = 0;
var letters_by_frequency = ["e", "t", "a", "o", "i", "n", "s", "r", "h", "d", "l", "u", "c", "m", "f", "y", "w",
    "g", "p", "b", "v", "k", "x", "q", "j", "z"];

var incorrect_guesses = [];
var incorrect_guess_count = 0;
var unsolved_word = [];

var game_word = function(){ // this has to return the value of the choose_word function

}


function choose_word() { // this has to return the new word
  var long_words = ["analogous", "bartender", "chipmunks", "dirigible", "economics", "foolhardy",
   "groceries", "hoodwinks", "influence", "jailbreak", "knowledge", "longitude", "microchip", "narrative", 
   "obnoxious", "practiced", "questions", "rationale", "snowdrift", "trombones","umbrellas", "validated",
   "windblown", "xenophile", "youngster", "zealously"]

  var short_words = ["acquit", "botany", "column","devour", "elixir", "flagon", "gelato", "hungry", "injury",
   "jokers", "kicker", "lunacy","midget", "nebula", "orphan", "purify", "quirky", "rhumba", "syntax", "tragic",
   "uptalk", "voyage", "woeful", "yachts", "zonked", "opaque"] // didn't find any good words starting with x

  var index = Math.floor(Math.random() * 25);

  var word;
  (Math.random() < .5) ? word = long_words[index] : word = short_words[index]
  word = word.split('');
  return word;
}

function setup_word(game_word) { // this has to return the unsolved_word array with the correct number of blanks
  for (index = 0; index < game_word.length; index++) {
  	unsolved_word[index] = "___";
  }
  console.log("Your word has " + game_word.length + " letters.");
  console.log("If you guess 8 wrong letters, you lose.");
  console.log("Good luck!");
  return unsolved_word;
}


function guess_letter() {
  console.log("You guessed: " + letters_by_frequency[letter_index]);
  return letter_index++;

}

function examine_word(word_array) {
  var new_letter = letters_by_frequency[guess_letter()];
  var letters_found = 0;
  var found_at = [];
  for (var position = 0; position < word_array.length; position++){
  	if (word_array[position] == new_letter) {
  		letters_found ++;
  	    found_at.push(position);
  	}
  }

  if (letters_found == 0) {
  	incorrect_guesses.push(new_letter);
  	incorrect_guess_count++;
  	var guesses_left = 8 - incorrect_guess_count;
  	console.log(scaffold[incorrect_guess_count]);
  	console.log("No luck, sorry!");
  	console.log("You have " + guesses_left + " wrong guesses left.")
  	console.log("These are the incorrect letters you've already guessed: " + incorrect_guesses);
  }
  else {
  	console.log("Good guess!");
  	for (var index = 0; index < found_at.length; index++) {
  		unsolved_word[found_at[index]] = new_letter;
  	}
  }
  console.log(unsolved_word.join(" "));
  game_over(word_array,unsolved_word);
  return unsolved_word;
}

function game_over(game_word,unsolved_word) {
  if (game_word.join("") === unsolved_word.join("")) {
  	console.log("You won! Nice job");
  	return unsolved_word;
  }
  	else if (incorrect_guess_count ===8 ) {
  		console.log("Game over. You lose.");
  		console.log("The word was " + game_word.join(""));
  	}
  	else {
  		examine_word(game_word);
  	}
}

game_word = choose_word();
setup_word(game_word);
examine_word(game_word);


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
