FROM php:5.6.15-apache
MAINTAINER Olivier B. <olivier@bertrand.xyz>

RUN a2enmod rewrite \
    && a2enmod headers \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install mysqli

COPY . /var/www/html
COPY vendor /var/www/html/vendor
COPY ./vhost /etc/apache2/sites-enabled/
EXPOSE 80
