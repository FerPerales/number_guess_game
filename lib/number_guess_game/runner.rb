module NumberGuessGame
  ## This class represent a command-line application that uses the main logic of the game
  #
  class Runner
    MAX_GUESSES = 5
    ##
    # Kicks-off a new game with some default values:
    #
    # * max_guesses: the number of allowed tries. 5 by default
    # * number_to_guess:  a random number between 1 and 1,000
    def self.start # rubocop:disable Metrics/AbcSize
      number_to_guess = (1..1000).to_a.sample
      guesser = GuessNumber.new(number_to_guess, MAX_GUESSES)
      puts 'Guess the number. You have three changes:'
      max_guesses.times do |number|
        puts "#{number + 1}/#{max_guesses} guess: ---> "
        guess = gets.chomp
        guess_response = guesser.number_guessed?(guess)
        puts guess_response.message
        break if guess_response.result
      end
    end
  end
end
