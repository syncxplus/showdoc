FROM richarvey/nginx-php-fpm:1.7.1
COPY . /var/www/html/

RUN apk update \
 && apk add --no-cache openldap-dev \
 && docker-php-ext-install ldap

RUN chmod -R 777 /var/www/html/
RUN mkdir /showdoc_data
RUN mkdir /showdoc_data/html
RUN cp -R /var/www/html/ /showdoc_data/
