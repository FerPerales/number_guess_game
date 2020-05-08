module NumberGuessGame
  # This struct represent the combination of a result and a message:
  #
  # * result: a boolean value indicating if the game was won
  # * message: a hint for the player i.e. you guess is greater than the number, you won or you lose
  #
  GuessResult = Struct.new :result, :message
end
