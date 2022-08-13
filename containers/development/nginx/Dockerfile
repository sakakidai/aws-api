FROM nginx:1.18
RUN apt-get update && \
    apt-get install -y apt-utils procps net-tools iproute2\
                       locales && \
    sed -i -e 's/# ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
COPY ./containers/development/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./containers/development/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]