FROM tutum/apache-php
MAINTAINER Olivier B. <olivier@bertrand.xyz>

ADD . /app
RUN rm -fr /var/www/html && ln -s /app/public /var/www/html

EXPOSE 80
