FROM ruby:2.4.3
# PG
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
&& apt-get install -y nodejs
# Yarn
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

ENV APP /tg_chat

RUN mkdir $APP
WORKDIR $APP

ADD Gemfile* $APP/
RUN bundle install

RUN gem install foreman

ADD package.json $APP
ADD yarn.lock $APP
RUN yarn install

ADD . $APP