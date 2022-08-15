FROM ruby:3.1.2

RUN apt-get update && apt-get install -y build-essential libpq-dev vim net-tools iproute2

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    BUNDLE_PATH=vendor/bundle \
    EDITOR=vi

WORKDIR /aws-api
RUN gem install bundler
COPY Gemfile Gemfile.lock /aws-api/
RUN bundle install
RUN bundle install --without test development
COPY . /aws-api
RUN mkdir -p /aws-api/tmp/sockets /aws-api/tmp/pids

# ボリューム化して、nginxからファイルを参照できるようにする。
VOLUME /aws-api/public
VOLUME /aws-api/tmp

# entrypoint.shを作成
COPY ./containers/production/rails/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD bash -c "bundle exec puma -C config/puma.rb"