class Game

  def initialize
    @player1 = Player.new
    @player2 - Player.new
    @currentPlayer = @player1
    @turn = true
  end

  def score
    puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
    puts "---- NEW TURN -----"
  end

  def new_question
    @turn ? @player = @player1 : @player = @player2
    new_question = Questions.new

    puts @player = @player1 ? "Player 1: #{question.question_gen}" : "Player 2: #{question.question_gen}"
    print '> '

    player_answer = gets.chomp.to_i

    if new_question.answer?(player_answer)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @currentPlayer.lose_life
    end

    @turn ? @turn = false : @turn = true
  end

  def play

    until @player1.life == 0 || @player2.life == 0 do
      new_question
      score
    end

    puts @player == @player1 ? "Player 2 wins with a score of #{@player2.life}/3" : "Player 1 wins with a score of #{@player1.life}/3"
    puts "---- GAME OVER ----"
  end

end