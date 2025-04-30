# Use the official PHP 7.4 with Apache image
FROM php:7.4-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install required PHP extensions and system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy all project files to the container
COPY . /var/www/html

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 to match Apache
EXPOSE 80
