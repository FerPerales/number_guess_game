# NoMoreTurnsError
#
module NumberGuessGame
  class NoMoreTurnsError < StandardError
    def message
      'No more turns! You cannot play anymore'
    end
  end
end
