source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'jquery-rails'

gem 'devise'
gem 'devise-i18n'

gem 'rails-i18n'
gem 'rails_12factor'

gem 'twitter-bootstrap-rails'
gem 'uglifier'
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails'

gem 'lightbox-bootstrap-rails'
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'

gem 'figaro'

gem 'dotenv-rails'
gem 'airbrussh'
group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'debase'
  gem 'listen'
  gem 'ruby-debug-ide'
  gem 'sqlite3', '~> 1.3.6'
  gem 'letter_opener_web', '~> 1.3', '>= 1.3.4'
end

group :development do
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.3', require: false
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano-passenger'
end