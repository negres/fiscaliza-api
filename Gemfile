source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# environment variables
gem 'figaro'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

# autenticacao de login
gem 'devise'

# autenticacao de login
gem 'devise-jwt'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_bot_rails'                           # Factories to generate models instances
  gem 'rspec-rails'
end

group :development do
  gem 'annotate'                              # Annotate models
  gem 'bullet'                                # Detect N+1 queries
  gem 'foreman'                               # Manage Procfile-based applications
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'                                # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'                      # Clean database after tests
  gem 'faker'                                 # fake data
  gem 'json_matchers'                         # Matchers to json data
  gem 'shoulda-matchers'                      # Better Matchers
  gem 'timecop'                               # Time travel in tests
  gem 'webmock'                               # Mock external requests
end
