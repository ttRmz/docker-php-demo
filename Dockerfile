FROM php:7.1-fpm

RUN apt-get update 

# install wget
RUN apt-get install wget -y

# install phpunit
RUN wget https://phar.phpunit.de/phpunit-6.5.phar
RUN chmod +x phpunit-6.5.phar
RUN mv phpunit-6.5.phar /usr/local/bin/phpunit
RUN phpunit --version
