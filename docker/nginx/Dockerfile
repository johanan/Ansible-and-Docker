FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y nginx php5-fpm php5-mysql php5-memcache php5-curl memcached supervisor

COPY default /etc/nginx/sites-available/default
COPY www.conf /etc/php5/fpm/pool.d/
COPY supervisord.conf /etc/supervisor/conf.d/
COPY php.ini /etc/php5/fpm/php.ini
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME /var/www/html

EXPOSE 80 443
CMD ["/usr/bin/supervisord"]
