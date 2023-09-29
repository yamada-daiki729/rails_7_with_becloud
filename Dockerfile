FROM --platform=linux/x86_64 ruby:3.2.2
RUN apt-get -qq update && apt-get install -y vim tzdata && \
    mkdir /tmp_rails

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

# puma.sockの置き場所
RUN mkdir -p tmp/sockets

VOLUME /app/public
VOLUME /app/tmp
