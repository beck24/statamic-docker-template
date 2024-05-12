FROM php:8.3.6-apache

COPY --from=composer:2.7.6 /usr/bin/composer /usr/local/bin/composer

RUN apt-get update && apt-get install -y --no-install-recommends \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libgd-dev \
    libonig-dev \
    git \
    zip \
    unzip \
&& docker-php-ext-configure gd \
            --prefix=/usr \
            --with-jpeg \
            --with-webp \
            --with-xpm \
            --with-freetype \
&& docker-php-ext-install -j$(nproc) gd \
&& docker-php-ext-install bcmath exif mbstring \
&& rm -rf /var/lib/apt/lists/*

RUN echo "export PATH=${PATH}:~/.composer/vendor/bin" >> ~/.bashrc
RUN composer global require statamic/cli

EXPOSE 80
