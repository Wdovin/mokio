# Base image
FROM ruby:latest

ENV HOME /home/rails/webapp

# Install PGsql dependencies and js engine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
ADD *.gemspec $HOME/
ADD lib/mokio/version.rb $HOME/lib/mokio/
RUN bundle install

# Add the app code
ADD . $HOME

# Default command
CMD ["rails", "server", "--binding", "0.0.0.0"]