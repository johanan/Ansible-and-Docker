FROM debian:wheezy

RUN apt-get update && \
    apt-get install -y php5-fpm php5-mysql php-apc php5-curl supervisor

COPY www.conf /etc/php5/fpm/pool.d/
COPY supervisord.conf /etc/supervisor/conf.d/
COPY php.ini /etc/php5/fpm/php.ini
COPY php-fpm.conf /etc/php5/fpm/php-fpm.conf

VOLUME /var/www/html

EXPOSE 9000
CMD ["/usr/bin/supervisord"]
