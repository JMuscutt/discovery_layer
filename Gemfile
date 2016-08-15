source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

group :production do
    # Use postgres as the database for Active Record
    # Comment out the first line if using Ruby, the second line if using JRuby
    #gem 'pg', '0.17.1', :platforms => :jruby, :git => 'git://github.com/headius/jruby-pg.git', :branch => :master
    gem 'pg', :platforms => :ruby
end
group :development, :test do
    gem 'sqlite3'
    gem 'activeuuid', '>= 0.5.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Using RubyRhino under jruby, RubyRacer under ruby
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyrhino', :platforms => :jruby
gem 'therubyracer', :platforms => :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'blacklight', '>=5.16.3'

gem 'rsolr', '~> 1.0.6'
gem 'devise'
gem 'devise-guests', '~> 0.3'
gem 'blacklight-marc', '~> 5.0'

gem "ahoy_matey"
gem "blacklight_advanced_search", '>=5.2.1'
gem "blacklight_range_limit"
gem "bibtex-ruby"
gem "citeproc-ruby"
gem "csl-styles"
gem "exception_notification"

# Also use this EDS API gem
gem 'ebsco-discovery-service-api'
gem 'browser', '=1.1.0'

# Use jdbcsqlite3 as the database for Active Record in jruby,
# sqlite3 in ruby
#gem 'activerecord-jdbcsqlite3-adapter', :platforms => :jruby
#gem 'sqlite3', :platforms => :ruby

gem 'coveralls', require: false
