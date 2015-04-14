FROM debian:wheezy

RUN apt-get update && \
  apt-get install -y apt-transport-https && \
  apt-get install -y curl && \
  curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add - && \
  echo "deb https://repo.varnish-cache.org/debian/ wheezy varnish-4.0" >> /etc/apt/sources.list.d/varnish-cache.list && \
  apt-get update && \
  apt-get install -y varnish && \
  apt-get install -y supervisor

COPY supervisord.conf /etc/supervisor/conf.d/
COPY start-varnish.sh /start-varnish.sh
COPY default.vcl /etc/varnish/default.vcl

ENV CACHE_SIZE=32m

EXPOSE 80

CMD ["/start-varnish.sh"]
