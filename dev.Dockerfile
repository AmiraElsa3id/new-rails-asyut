FROM ruby:4.0.2-slim

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
      build-essential git libvips libyaml-dev pkg-config sqlite3 curl && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

WORKDIR /rails

ENV RAILS_ENV=development \
    BUNDLE_PATH="/usr/local/bundle"

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
