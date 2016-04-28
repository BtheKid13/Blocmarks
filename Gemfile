source 'https://rubygems.org'
ruby '2.2.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


group :development, :test do
  gem 'sqlite3'
  gem 'pry-rails'
  gem 'pry-byebug' #A better bye bug https://github.com/deivid-rodriguez/pry-byebug#execution-commands
  gem 'better_errors' #A Better error console https://github.com/charliesome/better_errors
  gem 'binding_of_caller'
  gem 'spring'
  gem 'faker'
  gem 'mailcatcher'
  gem 'annotate'

end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

#Core Gems
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'

#Additions
gem 'figaro', '1.0'
gem 'devise'
gem 'pundit'
gem 'valid_url'
