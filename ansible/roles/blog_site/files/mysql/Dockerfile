FROM mysql:5.6

COPY wp_backup.sql /tmp/
COPY load_db.sh /

RUN echo "use $MYSQL_DATABASE;" | cat - /tmp/wp_backup.sql > temp && mv temp /tmp/wp_backup.sql
