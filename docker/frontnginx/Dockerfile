FROM nginx:1.11

COPY ejosh.co.crt /etc/nginx/ssl/nginx.crt
COPY ejosh.co.key /etc/nginx/ssl/nginx.key
COPY default.templ /etc/nginx/conf.d/default.templ
COPY start-nginx.sh /start-nginx.sh
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["/start-nginx.sh"]
