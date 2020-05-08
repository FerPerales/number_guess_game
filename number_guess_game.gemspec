lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require_relative 'lib/number_guess_game/version'
require 'number_guess_game/version'

Gem::Specification.new do |spec|
  spec.name          = 'number_guess_game'
  spec.version       = NumberGuessGame::VERSION
  spec.authors       = ['Fernando Perales']
  spec.email         = ['perales@michelada.io']

  spec.summary       = 'TicTacToe game'
  spec.description   = "It's a game"
  spec.homepage      = 'https://ferperales.net'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ferperales/number_guess_game'
  spec.metadata['changelog_uri'] = 'https://github.com/ferperales/number_guess_game/CHANGELOG.md'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 12.0'
end
