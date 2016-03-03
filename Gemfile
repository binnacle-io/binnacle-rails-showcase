source 'https://rubygems.org'

ruby '2.2.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use puma as the app server
gem 'puma'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass', '~> 4.5.0'

gem 'js-routes'

# binnacle ruby driver
gem 'binnacle', '~> 0.4.1'
gem 'binnacle_chat', '~> 0.0.2'
gem 'binnacle_ar', '~> 0.0.1'

# client-side assets
source 'https://rails-assets.org' do
  gem 'rails-assets-binnacle', '~> 0.1.4'
  gem 'rails-assets-jquery-ui', '~> 1.11.3'
  gem 'rails-assets-jspanel', '~> 2.6.1'
  gem 'rails-assets-gravatarjs', '~> 1.0.0'
end

# log outgoing http requests
gem 'httplog'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  gem 'dotenv-rails'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'foreman'

  gem 'better_errors'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
