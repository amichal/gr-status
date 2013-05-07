source 'http://rubygems.org'
ruby "1.9.3"

gem 'rails', '~> 3.2.12'
gem 'pg'
gem 'json'
gem 'jquery-rails'
gem 'haml-rails'
gem 'sass-rails', '~> 3.2'
gem 'bootstrap-sass', '~> 2.3.1.0'

gem 'kaminari'
gem 'htmlentities'
gem 'simple_form'

gem 'gattica', :git => 'git://github.com/chrisle/gattica.git'
gem 'octokit'
gem 'omniauth-google-apps'

gem 'unicorn'

group :production do
  gem 'dalli'
end

group :assets do
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development, :test do
  gem 'ruby-prof'
  gem 'test-unit'
  #gem 'rspec-rails'
end

group :development do
	gem 'ruby-debug19'
	gem 'pry'
  gem 'sqlite3'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'
