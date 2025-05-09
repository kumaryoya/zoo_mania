source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.6"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sorcery"
gem 'rails-i18n'
gem 'carrierwave'
gem 'mini_magick'
gem 'googleauth'
gem 'config'
gem 'letter_opener_web'
gem 'jquery-rails'
gem 'sitemap_generator'
gem 'meta-tags'
gem 'fog-aws'
gem "aws-sdk-s3", require: false
gem 'dotenv-rails'
gem 'carrierwave-aws'
gem 'kaminari'
gem 'enum_help'
gem 'ransack'
gem 'line-bot-api'
gem 'simplecov', require: false, group: :test
gem 'sassc'
gem 'pg'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-capybara'
end

group :development do
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'rspec-rails'
  gem "factory_bot_rails"
  gem 'faker'
  gem 'database_cleaner'
end
