ruby "2.4.1"
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'rest-client'
gem 'pry'
gem 'dotenv-rails', require: 'dotenv/rails-now'

gem 'rails_admin', '~> 1.2'


group :development, :test do


  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem "factory_girl_rails", "~> 4.0"
  gem 'simplecov', require: false
end

group :development do


  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'dotenv-rails', require: 'dotenv/rails-now'



end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
