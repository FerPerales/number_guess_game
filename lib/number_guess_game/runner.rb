require_relative 'guess_number'
require_relative 'errors/no_more_turns_error'


module NumberGuessGame
  class Runner
    def self.start
      max_guesses = 5
      number_to_guess = (1..1000).to_a.sample
      guesser = GuessNumber.new(number_to_guess, max_guesses)

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

