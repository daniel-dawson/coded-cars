source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use dotenv to hold your database secrets
gem 'dotenv-rails', '~> 2.7'
# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'

## Styling ##
# Use bootstrap gem for styling
gem 'bootstrap', '~> 4.3'
# Adds easier bootstrap form functionality for Rails
gem 'bootstrap_form', '~> 4.0'
# Supports bootstrap
gem 'sprockets-rails', '~> 3.2'
# Supports bootstrap
gem 'jquery-rails', '~> 4.3'
# Use font awesome for icons
gem 'font-awesome-rails', '~> 4.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Security engine for Rails apps
  gem 'devise'
  # Use RSpec for back-end testing
  gem 'rspec-rails', '~> 3.8'
  # Creates dummy data for test instances
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.12.2'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # Creates test objects
  gem 'factory_bot_rails', '~> 5.0'
  # Provides one-line test code
  gem 'shoulda-matchers', '~> 4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "rubocop-faker", "~> 0.2.0"
