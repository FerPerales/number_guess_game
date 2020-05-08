require_relative 'test_helper'
require 'minitest/autorun'
require_relative '../lib/number_guess_game/guess_number.rb'

class GuessNumberTest < Minitest::Test
  def setup
    @max_guesses = 3
    @guesser = NumberGuessGame::GuessNumber.new(10, @max_guesses)
  end

  def test_last_error_message_says_game_is_over
    guess_response = @guesser.number_guessed? 9
    assert_match(/Try again. My number is greater than /, guess_response.message)

    guess_response = @guesser.number_guessed? 9
    assert_match(/Try again. My number is greater than /, guess_response.message)

    guess_response = @guesser.number_guessed? 9
    assert_match(/You lost! The number was /, guess_response.message)
  end

  def test_can_play_three_times_if_i_dont_guess_the_number
    @guesser.number_guessed? 2
    @guesser.number_guessed? 3
    @guesser.number_guessed? 4

    assert @guesser.tries == 3
  end

  def test_returns_correct_message_when_number_is_greater
    guess_response = @guesser.number_guessed? 2
    assert_match(/Try again. My number is greater than /, guess_response.message)
  end

  def test_returns_correct_message_when_number_is_lesser
    guess_response = @guesser.number_guessed? 15
    assert_match(/Try again. My number is lesser than /, guess_response.message)
  end

  def test_returns_correct_message_when_number_is_guessed
    guess_response = @guesser.number_guessed? 10
    assert_match(/You won!/, guess_response.message)
  end

  def test_guess_at_first_try
    assert @guesser.number_guessed?(10).result
  end

  def test_prevents_playing_more_than_the_designed_turns
    @max_guesses.times do |number|
      @guesser.number_guessed? number
    end

    error = assert_raises NumberGuessGame::NoMoreTurnsError do
      @guesser.number_guessed? 20
    end

    assert_match(/No more turns! You cannot play anymore/, error.message)
  end
end
