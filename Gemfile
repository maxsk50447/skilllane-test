source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Backend
gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18.4', '< 2.0'
gem 'puma', '~> 3.11'

# Frontend
gem 'bootstrap', '~> 4.0.0'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'momentjs-rails'
gem 'bootstrap-daterangepicker-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Authentication & Authorization
gem 'devise'
gem 'pundit'

# Epics
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5'

group :development, :test do
  # Capybara
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'rubocop', '~> 0.63.1', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
