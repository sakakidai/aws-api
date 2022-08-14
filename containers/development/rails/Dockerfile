FROM ruby:3.1.2

RUN apt-get update && apt-get install -y build-essential libpq-dev vim net-tools iproute2

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    BUNDLE_PATH=vendor/bundle

WORKDIR /aws-api

RUN echo "alias ll='ls -lG'" >> /root/.bashrc
RUN gem install bundler

COPY Gemfile Gemfile.lock /aws-api/
RUN bundle install
COPY . /aws-api
RUN mkdir -p /aws-api/tmp/sockets /aws-api/tmp/pids

CMD ["bash"]
