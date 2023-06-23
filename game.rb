class GameBoard
  attr_accessor answer

  RED_CIRCLE="\u{1F534}"
  WHITE_CIRCLE="\u{26AA}"
  BLACK_CIRCLE="\u{26ab}"

  ANWSER_LEN=4
  DIGIT_UPPER_LIMIT=9
  DIGIT_LOWER_LIMIT=0


  def generate_answer()
    for i in 1..ANWSER_LEN
      answer.push(rand(DIGIT_LOWER_LIMIT..DIGIT_UPPER_LIMIT))
    end
  end

  def compare_answer(answer, guess)
  end

  def print_test()
    #printing to check if the emojis are getting printed properly
    puts RED_CIRCLE + WHITE_CIRCLE + BLACK_CIRCLE
    puts answer
    puts generate_answer()
  end

end

game = GameBoard.new
game.print_test
