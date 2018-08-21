class Game
  attr_accessor :player1_value, :player2_value

  def initialize(player1_value, player2_value )
    @player1_value = player1_value
    @player2_value = player2_value
  end



  def result
    player1_wins = " Player 1 wins using #{@player1_value}!"
    player2_wins = " Player 2 wins using #{@player2_value}!"


    return "Is a draw!" if @player1_value == @player2_value

    case @player1_value

    when "scissors"
      return player1_wins unless @player2_value == "rock"
      return player2_wins
    when "rock"
      return player1_wins unless @player2_value == "paper"
      return player2_wins
    when "paper"
      return player1_wins unless @player2_value == "scissors"
      return player2_wins
    end

  end
end
