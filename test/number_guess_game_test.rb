require 'test_helper'

class NumberGuessGameTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NumberGuessGame::VERSION
  end
end
