module NumberGuessGame
  # This class represents the logic of the game
  #
  class GuessNumber
    # Tries: represent the number of turns the user has used
    attr_reader :tries

    ##
    # Create a new NumberGuessGame instance with two values:
    # * number_to_guess:  the number the user will try to guess
    # * max_guesses: the maximum number of tries a given player has
    #
    def initialize(number_to_guess, max_guesses)
      @number_to_guess = number_to_guess
      @max_guesses = max_guesses
      @tries = 0
    end

    ##
    # Return a GuessResult object representing if the user has guessed the number or not
    #
    # guess: the number to guess
    #
    # A NoMoreTurnsError is raised if the user tries to make a guess but does not have any remaining tries left
    def number_guessed?(guess)
      raise NoMoreTurnsError unless more_turns?

      number_guessed = guess.to_i == @number_to_guess
      message = "Try again. My number is greater than #{guess}"
      message = 'You won!' if number_guessed
      message = "Try again. My number is lesser than #{guess}" if guess.to_i > @number_to_guess
      @tries += 1
      message = "You lost! The number was #{@number_to_guess}" if !more_turns? && !number_guessed
      GuessResult.new(number_guessed, message)
    end

    ##
    # Returns a boolean representing if the user has any remaining try left
    def more_turns?
      @tries < @max_guesses
    end
  end
end
