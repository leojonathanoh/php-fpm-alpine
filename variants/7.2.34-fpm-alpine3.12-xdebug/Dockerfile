FROM php:7.2.34-fpm-alpine3.12

# Xdebug: https://stackoverflow.com/questions/46825502/how-do-i-install-xdebug-on-dockers-official-php-fpm-alpine-image
# PHPIZE_DEPS: autoconf dpkg-dev dpkg file g++ gcc libc-dev make pkgconf re2c
RUN apk add --no-cache --virtual .build-dependencies $PHPIZE_DEPS \
    && pecl install xdebug-2.9.8 \
    && docker-php-ext-enable xdebug \
    && docker-php-source delete \
    && apk del .build-dependencies



RUN echo \
    && php -i \
    && php -m