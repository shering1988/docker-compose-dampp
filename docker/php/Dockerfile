FROM php:8.4-apache

RUN apt-get update && apt-get install -y \
    gnupg \
    g++ \
    procps \
    openssl \
    git \
    unzip \
    zlib1g-dev \
    libssl-dev \
    libzip-dev \
    libfreetype6-dev \
    libpng-dev \
    libjpeg-dev \
    libicu-dev  \
    libcurl4-openssl-dev  \
    default-mysql-client  \
    libonig-dev \
    libxslt1-dev \
    acl

RUN docker-php-ext-configure gd --with-jpeg --with-freetype

RUN docker-php-ext-install \
    pdo pdo_mysql zip xsl gd intl opcache exif mbstring mysqli curl ftp

COPY ./ssl/dev.localhost.crt /etc/ssl/certs/localhost.crt
COPY ./ssl/dev.localhost.key /etc/ssl/private/localhost.key

COPY ./dampp.local.conf /etc/apache2/sites-available/dampp.local.conf

COPY ./php.ini /usr/local/etc/php/conf.d/docker-php-config.ini
COPY ./php.ini /usr/local/etc/php/php.ini

RUN a2enmod ssl && \
    a2enmod rewrite && \
    a2dissite 000-default.conf default-ssl.conf && \
    a2ensite dampp.local.conf