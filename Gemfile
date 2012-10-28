source 'http://rubygems.org'

gem 'rails'
#gem 'mysql2', '0.2.7'
gem 'mysql2'
gem 'rake'
gem 'jquery-rails', '>= 1.0.12'
gem 'sqlite3'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

# Bundle the extra gems:
gem 'haml'
gem 'devise'
gem "cells", "~> 3.8.0"
gem 'rack'
gem 'will_paginate'
gem 'paperclip', '~> 2.7.0'
gem "profanity_filter"

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'webrat'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  group :test, :darwin do
    gem 'rb-fsevent'
  end
#  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'guard'
  gem 'guard-livereload'
end
