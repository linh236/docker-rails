FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /tetproject
WORKDIR /tetproject
COPY Gemfile /tetproject/Gemfile
COPY Gemfile.lock /tetproject/Gemfile.lock
RUN bundle install
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
#ADD . .
#CMD ["puma"]
