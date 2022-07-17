FROM php:8.0-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Install xdebug.
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug \
;
EXPOSE 80