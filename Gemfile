source 'https://rubygems.org'

gem 'rails', '4.0.2'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'haml-rails'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'guard'
  gem 'guard-rspec', require: false # automatically run your specs
  gem 'guard-spork'               # Spork allows to automatically & intelligently start/reload your RSpec/Cucumber/Test::Unit Spork server(s).
  gem 'rb-fsevent'                # FSEvents API with signals handled
  gem 'better_errors'             # Better Errors replaces the standard Rails error page with a much better and more useful error page. It is also usable outside of Rails in any Rack app as Rack middleware. If you would like to use Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names), you need to add the binding_of_caller
  gem 'binding_of_caller'         # Retrieve the binding of a method's caller in MRI 1.9.2+
  gem 'meta_request'              # RailsPanel is a Chrome extension for Rails development that will end your tailing of development.log. Have all information about your Rails app requests in the browser - in the Developer Tools panel. Provides insight to db/rendering/total times, parameter list, rendered views and more.

  gem 'spork-rails'

  gem 'pry'                       # An IRB alternative and runtime developer console
  gem 'pry-nav'
  gem 'thin'
  gem 'bullet'                    # The Bullet gem is designed to help you increase your application's performance by reducing the number of queries it makes. It will watch your queries while you develop your application and notify you when you should add eager loading (N+1 queries), when you're using eager loading that isn't necessary and when you should use counter cache.
  gem 'byebug'                    # drop byebug where you want to start debugging
  gem 'flay'                      # Flay analyzes code for structural similarities. Differences in literal values, variable, class, method names, whitespace, programming style, braces vs do/end, etc are all ignored. Making this totally rad.
  gem 'lol_dba'                   # lol_dba is a small package of rake tasks that scan your application models and displays a list of columns that probably should be indexed. Also, it can generate .sql migration scripts.
  gem 'mailcatcher'               # MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface. Run mailcatcher, set your favourite app to deliver to smtp://127.0.0.1:1025 instead of your default SMTP server, then check out http://127.0.0.1:1080 to see the mail that's arrived so far.
  gem "rack-mini-profiler"        # Profiler for your development and production Ruby rack apps.
  gem 'brakeman'                  # security analyzer
  gem 'guard-brakeman'            # allows you to automatically run Brakeman tests when files are modified
end

group :development, :test do
  gem 'rspec-rails' #includes RSpec itself in a wrapper to add some extra Rails-specific features
  gem 'fabrication' #replaced factory_girl
  gem 'faker' #generates names, email addresses, and other placeholders for factories
  #TODO replace faker with ffaker for faster generation
  # gem 'factory_girl_rails', '~> 4.2.1' #replaces Rails’ default fixtures for feeding test data to the test suite with much more preferable factories
  gem 'pry-rails'
  gem 'capybara' #makes it easy to programatically simulate your users’ interactions with your web application
  gem 'sqlite3'
  gem 'sandi_meter'
  gem 'ruby_gntp'
end

group :test do
  gem 'database_cleaner' #helps make sure each spec run in RSpec begins with a clean slate, by–you guessed it–cleaning data from the test database
  gem 'launchy' #does one thing, but does it well: It opens your default web browser on demand to show you what your application is rendering. Very useful for debugging tests.
  gem 'shoulda-matchers'
  gem 'selenium-webdriver'  #will let us test JavaScript-based browser interactions with Capybara
  gem 'simplecov', :require => false
end

ruby '2.1.0'
