class Questions
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
  end

  def question_gen
    "What does #{@num1} plus #{@num2} equal?"
  end

  def answer?(input)
    @answer == input
  end
end