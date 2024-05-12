FROM php:8.3.6-apache

RUN apt-get update && apt-get install -y --no-install-recommends \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libgd-dev \
    libonig-dev \
&& docker-php-ext-configure gd \
            --prefix=/usr \
            --with-jpeg \
            --with-webp \
            --with-xpm \
            --with-freetype \
&& docker-php-ext-install -j$(nproc) gd \
&& docker-php-ext-install bcmath \
    && docker-php-ext-install exif \
    && docker-php-ext-install mbstring

EXPOSE 80
