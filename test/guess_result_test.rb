require_relative 'test_helper'
require 'minitest/autorun'
require_relative '../lib/number_guess_game/guess_result.rb'

class GuessResultTest < Minitest::Test
  def test_respond_to_result_method
    guess_result = NumberGuessGame::GuessResult.new(true, 'a message')
    assert_respond_to guess_result, :result
  end

  def test_respond_to_message_method
    guess_result = NumberGuessGame::GuessResult.new(true, 'a message')
    assert_respond_to guess_result, :message
  end
end
