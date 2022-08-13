FROM ruby:3.1.2

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    BUNDLE_PATH=vendor/bundle

WORKDIR /aws-api
RUN gem install bundler
COPY Gemfile Gemfile.lock /aws-api/
RUN bundle install
RUN bundle install --without test development
COPY . /aws-api
RUN mkdir /aws-api/tmp/pids

CMD bash -c "rm -f tmp/pids/server.pid && bundle exec puma -C config/puma.rb"