FROM php:7.1-fpm


# install mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# install gd
RUN apt-get update -y && apt-get install -y libpng-dev
RUN docker-php-ext-install gd && docker-php-ext-enable gd

# install wget
RUN apt-get install wget -y

# install phpunit
RUN wget https://phar.phpunit.de/phpunit-6.5.phar
RUN chmod +x phpunit-6.5.phar
RUN mv phpunit-6.5.phar /usr/local/bin/phpunit
RUN phpunit --version
