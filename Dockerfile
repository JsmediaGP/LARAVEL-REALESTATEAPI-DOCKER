# Use an official PHP runtime as a base image
FROM php:8.2-fpm

# Install system dependencies and PHP extensions
# ... (other instructions)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    #mysql-client \  
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql
# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the application code into the container
COPY . .

# Install application dependencies using Composer
RUN composer install

# Expose port 9000 and start PHP-FPM server
EXPOSE 9090
CMD ["php-fpm"]
