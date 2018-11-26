@'
# PDO: mysql driver
RUN docker-php-ext-install pdo pdo_mysql

# PDO: pgsql driver
# See: https://github.com/docker-library/php/issues/221
RUN apk add --no-cache --virtual .pgsql-build-dependencies postgresql-dev \
    && docker-php-ext-install pdo pdo_pgsql
'@