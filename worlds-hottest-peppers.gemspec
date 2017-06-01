require_relative './lib/worlds-hottest-peppers/version'

Gem::Specification.new do |s|
  s.name        = 'worlds-hottest-peppers'
  s.version     = WorldsHottestPeppers::VERSION
  s.date        = '2016-01-13'
  s.summary     = "Best Restaurants in the World"
  s.description = "Provides details on the San Pellegrino Worlds 50 Best restaurants"
  s.authors     = ["Danny Dawson"]
  s.email       = 'dannyd4315@gmail.com'
  s.files       = ["lib/worlds-hottest-peppers.rb", "lib/worlds-hottest-peppers/cli.rb", "lib/worlds-hottest-peppers/scraper.rb", "lib/worlds-hottest-peppers/restaurant.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/worlds-best-restaurants'
  s.license     = 'MIT'
  s.executables << 'worlds-hottest-peppers'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end
