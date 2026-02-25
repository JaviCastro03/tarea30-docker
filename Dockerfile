FROM php:8.2-apache
LABEL authors="javi";

RUN apt update
RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo pdo_mysql
# RUN docker-php-ext-install mysqli

WORKDIR /var/www/html
RUN chown -R www-data:www-data /var/www/html

#COPY . /var/www/html/

COPY ./xdebug.ini /usr/local/etc/php/conf.d/docker-xdebug.ini

#docker build -t javiercastromuriana2006/php-apache:8.2 .

