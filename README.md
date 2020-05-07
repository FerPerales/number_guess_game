# NumberGuessGame

This gem contains the logic to play a guessing number game

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'number_guess_game'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install number_guess_game

## Usage

There are two ways:

You can run a command-line interface by running:

```ruby
NumberGuessGame::Runner.start
```

or, you can create a game by running:

```ruby
game = NumberGuessGame::GuessNumber.new(number_to_guess, max_tries)
```

Where:
* number_to_guess: the number the player is going to guess
* max_tries: the maximum number of guesses a player can try


That creates an instance of the game. To make a new guess, run this:


```ruby
game.number_guessed?(value_to_guess)
```

Where:
* value_to_guess: if the guess the user is doing

The game will return..









## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ferperales/number_guess_game. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/ferperales/number_guess_game/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NumberGuessGame project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ferperales/number_guess_game/blob/master/CODE_OF_CONDUCT.md).
