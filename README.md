# masterMind

## Part 1 Computer as the answer generator

* answer_generator function for the computer to create the answer
  * The answer would be stored in an array 
  * The numbers will be generated randomly with numbers being between maximum and minimum number
* function to take in the input from the user to take a guess
* function to compare between the guess and answer
  * The function should return 
    * 1 red circle for every digit present in the answer with position same as in the answer
    * 1 white circle for every digit present in the answer but not in the same posistion as in the answer
  * For implementaion purpose I can simply go for 1-1 comparision between answer and guess, keep track of indices which are not matched during the comparision and look for if those digits corresponding to that indices are present in the guess.
  * The first one should give the number of red circles and the second one should give the white
* There would be limit on the number of guess the player can take
* Print rules at the start for understanding the game since not everyone might have played the game (like myself)
* The answer would be stored in a class variable (remeber in ruby class variable is starts with @@ if there is not attr_accessor then you would have to keep @@ at every place)