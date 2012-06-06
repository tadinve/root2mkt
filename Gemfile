require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'
gem 'rails', '3.2.2'

gem "devise", ">= 2.1.0.rc"
gem "omniauth"
gem 'omniauth-twitter'
gem 'omniauth-linkedin'
#gem 'omniauth-google'

gem 'nifty-generators'
gem 'spreadsheet'
gem "geocoder"
gem 'gmaps4rails'
gem "bootstrap-sass", ">= 2.0.1"
gem 'jquery-rails'
gem "slim-rails"
gem "haml", ">= 3.1.4"

#active admin setup
gem 'activeadmin'
gem 'formtastic', '< 2.2.0'
gem "meta_search",    '>= 1.1.0.pre'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'sqlite3'
  gem "guard-bundler", ">= 0.1.3"  
  gem "guard-rails", ">= 0.0.3"    
  gem "guard-rspec", ">= 0.4.3"    
  gem "guard-cucumber", ">= 0.6.1" 
  gem "slim-rails"
  gem "haml-rails", ">= 0.3.4"
  gem "rspec-rails", ">= 2.9.0.rc2"
  gem "factory_girl_rails", ">= 2.0.0.rc"
  gem "guard", ">= 0.6.2"
end

group :production do
  gem 'pg'
end

group :test do
  gem "rspec-rails", ">= 2.9.0.rc2"
  gem "machinist"
  gem "factory_girl_rails", ">= 2.0.0.rc"
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0"
  gem "capybara", ">= 1.1.2"
  gem "database_cleaner", ">= 0.7.1"
  gem "launchy", ">= 2.0.5"
  gem "mocha"
end


case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group => :development
    gem 'growl', :group => :development
  when /linux/i
    gem 'libnotify', :group => :development
    gem 'rb-inotify', :group => :development
  when /mswin|windows/i
    gem 'rb-fchange', :group => :development
    gem 'win32console', :group => :development
    gem 'rb-notifu', :group => :development
end
