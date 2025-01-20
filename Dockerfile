# Use an official PHP image as the base
FROM php:8.1-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli


# Copy application files to the container
COPY . /var/www/html

# Set permissions for the application
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
