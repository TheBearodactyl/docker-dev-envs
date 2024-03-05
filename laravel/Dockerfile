# Use the latest Arch Linux base image
FROM archlinux:latest

# Update the package repositories and install essential packages
RUN pacman -Syu --noconfirm && \
  pacman -S --noconfirm base-devel git vim fish

# Install PHP and required extensions
RUN pacman -S --noconfirm php php-fpm php-intl php-sqlite php-gd

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Install Laravel Installer globally
RUN composer global require laravel/installer

# Set the default shell to fish
RUN chsh -s /usr/bin/fish

# Create a non-root user for development
RUN useradd -m -G wheel -s /usr/bin/fish developer && \
  echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Set the working directory
WORKDIR /var/www/html

# Expose PHP default port
EXPOSE 9000

# Switch to the non-root user
USER developer

# Start fish shell by default
CMD ["fish"]
