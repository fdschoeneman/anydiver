source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'jquery-rails'
gem "thin", ">= 1.5.0"
gem "haml", ">= 3.1.7"
gem "bootstrap-sass", ">= 2.1.0.1"
gem "sendgrid", ">= 1.0.1"
gem "devise", ">= 2.1.2"
gem "simple_form", ">= 2.0.4"

gem "therubyracer", ">= 0.10.2", :group => :assets, :platform => :ruby

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do 
  gem 'sqlite3'
  gem "haml-rails", ">= 0.3.5"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 2.3.1"
  gem "hub", ">= 1.10.2", :require => nil
end

group :test do 
  gem "turnip", ">= 1.0.0"
  gem "email_spec", ">= 1.2.1"
end

group :test, :development do 
gem "rspec-rails", ">= 2.11.4"
gem "factory_girl_rails", ">= 4.1.0" 
end


group :production do
  gem 'pg'
end