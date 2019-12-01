FROM php:7.3-apache

RUN a2enmod rewrite

RUN apt-get update && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli

CMD ["apache2-foreground"]
