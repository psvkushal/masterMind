class GameBoard
  attr_accessor :answer

  RED_CIRCLE="\u{1F534}"
  WHITE_CIRCLE="\u{26AA}"
  BLACK_CIRCLE="\u{26ab}"

  ANWSER_LEN=4
  DIGIT_UPPER_LIMIT=6
  DIGIT_LOWER_LIMIT=0

  @@answer = Array.new
  puts @@answer.class 
  def getGuess()
    puts "please enter the guess number the the digit can be between #{DIGIT_LOWER_LIMIT} and #{DIGIT_UPPER_LIMIT} and the length of the answer should be #{ANWSER_LEN}"
    isCorrectForm = false 
    
    while !isCorrectForm
      guess = gets.chomp
      if guess.length != ANWSER_LEN
        puts "The size of the guess should be #{ANWSER_LEN}"
        next
      end
      isCorrectForm = true
      number_list = guess.split("")
      for num in number_list
        if (Integer(num) < DIGIT_LOWER_LIMIT) | (Integer(num) > DIGIT_UPPER_LIMIT)
          isCorrectForm = false
          puts "The numbers should be in the range of #{DIGIT_LOWER_LIMIT} and #{DIGIT_UPPER_LIMIT}"
        end
        if !isCorrectForm
          break
        end
      end
    end

    int_guess = Array.new
    number_list.each{|x| int_guess.push(x)}
    return int_guess 
  end

  def generate_answer()
    for i in 1..ANWSER_LEN
      @@answer.push(rand(DIGIT_LOWER_LIMIT..DIGIT_UPPER_LIMIT))
    end
    return @@answer
  end

  def compare_answer(guess)
     
  end

  def print_test()
    #printing to check if the emojis are getting printed properly
    puts RED_CIRCLE + WHITE_CIRCLE + BLACK_CIRCLE
    puts @@answer.class
    puts @@answer
    puts generate_answer()
  end

end

game = GameBoard.new
game.print_test
puts game.getGuess