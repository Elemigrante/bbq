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

gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'debase'
  gem 'listen'
  gem 'ruby-debug-ide'
  gem 'sqlite3', '~> 1.3.6'
end