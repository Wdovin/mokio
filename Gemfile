source 'https://rubygems.org'

gem 'rails', '4.1.4'

### OpenShift Online changes:
# Fix the conflict with the system 'rake':
gem 'rake', '~> 0.9.6'



# Declare your gem's dependencies in mokio.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'


#==================================================================================================
gem 'mysql2', '0.3.18' # this is NOT required, someone may want to use different database

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Support for databases and environment.
# Use 'sqlite3' for testing and development and mysql and postgresql
# for production.
#
# To speed up the 'git push' process you can exclude gems from bundle install:
# For example, if you use rails + mysql, you can:
#
# $ rhc env set BUNDLE_WITHOUT="development test postgresql"
#
group :development, :test do
  gem 'rspec-rails'
  gem "factory_girl_rails"
  gem "faker"
  # gem "capybara"
  # gem "capybara-webkit" # may be useful: apt-get install qtquick1-5-dev qtlocation5-dev qtsensors5-dev qtdeclarative5-dev

  #
  # or #sudo apt-get install qt4-dev-tools libqt4-dev libqt4-core libqt4-gui
  #
  gem "selenium-webdriver"
  gem 'simplecov'
  gem 'activerecord-import'
  gem 'annotate', "2.6.5"
  # gem 'annotate','2.6.5' #, :git => 'git://github.com/ctran/annotate_models.git' # Annotate ActiveRecord models as a gem
  gem 'quiet_assets' #turns off the Rails asset pipeline log
  gem 'rack-mini-profiler' # displays speed badge for every html page
  #gem 'sunspot_solr' # optional pre-packaged Solr distribution for use in development
  gem 'progress_bar' # optional - for solr

  # Debuger: 
    gem 'pry'
    gem 'pry-remote'
    gem 'pry-nav'

  # Better errors
    gem 'better_errors'
    gem 'binding_of_caller'
    gem 'meta_request' # To use rails_panel extension
    gem 'deface'
end





gem 'haml2slim'

# Add support for the MySQL
group :production, :mysql do
# gem 'mysql2'
  gem 'mysql2', '0.3.18'
end

group :production, :postgresql do
  gem 'pg'
end

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development



# assety sie nie wczytywaly
gem 'rails_serve_static_assets'
gem 'rails_stdout_logging'