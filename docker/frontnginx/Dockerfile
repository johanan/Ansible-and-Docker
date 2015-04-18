FROM nginx:1.7

COPY nginx.crt /etc/nginx/ssl/nginx.crt
COPY nginx.key /etc/nginx/ssl/nginx.key
COPY default.conf /etc/nginx/conf.d/default.conf
COPY start-nginx.sh /start-nginx.sh
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["/start-nginx.sh"]
