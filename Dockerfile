FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /tetproject
WORKDIR /tetproject
COPY Gemfile /tetproject/Gemfile
COPY Gemfile.lock /tetproject/Gemfile.lock
RUN bundle install
