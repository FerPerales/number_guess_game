module NumberGuessGame
  # This error is raise when a user tries ty guess but does not have any remaining try left
  #
  class NoMoreTurnsError < StandardError
    def message
      'No more turns! You cannot play anymore'
    end
  end
end
