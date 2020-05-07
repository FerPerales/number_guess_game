require_relative 'guess_result'
require_relative 'errors/no_more_turns_error'
# GuessNumber
#
module NumberGuessGame
  class GuessNumber
    attr_reader :tries

    def initialize(number_to_guess, max_guesses)
      @number_to_guess = number_to_guess
      @max_guesses = max_guesses
      @tries = 0
    end

    def number_guessed?(guess)
      raise NoMoreTurnsError unless more_turns?

      number_guessed = guess.to_i == @number_to_guess
      message = "Try again. My number is greater than #{guess}"
      message = 'You won!' if number_guessed
      message = "Try again. My number is lesser than #{guess}" if guess.to_i > @number_to_guess
      @tries += 1
      GuessResult.new(number_guessed, message)
    end

    def more_turns?
      @tries < @max_guesses
    end
  end
end
