FROM ubuntu:15.04
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y \
    php5-cli \
    php5-mcrypt \
    php5-mongo \
    php5-mssql \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis \
    php5-sqlite \
    php5-gd \
    php5-memcached \
    postgresql-client-9.4

RUN php5enmod mcrypt
ADD php.ini /etc/php5/cli/conf.d/impact.ini

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]
