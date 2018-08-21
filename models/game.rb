class Game
  attr_accessor :player1_value, :player2_value

  def initialize
    @player1_value = player1_value
    @player2_value = player2_value
  end

  def result
    if @player1_value == "scissors"
      return "#{@player2_value} wins" unless @player2_value == "paper"
      return "#{@player1_value} wins"
    elsif @player1_value == "rock"
      return "#{@player2_value} wins" unless @player2_value == scissors
      return "#{@player1_value} wins"
    elsif @player1_value == "rock"
      return "#{@player2_value} wins" unless @player2_value == "scissors"
      return "#{@player1_value} wins"
    end
  end
end
