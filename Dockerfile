# 1. Apache va PHP o'rnatilgan tayyor muhitni tanlaymiz
FROM php:8.2-apache

# 2. Botimiz ishlashi uchun kerakli tizim kutubxonasini (libcurl-dev) o'rnatamiz
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev

# 3. Endi kerakli PHP kengaytmalarini (mysqli va curl) o'rnatamiz
RUN docker-php-ext-install mysqli curl

# 4. Bizning bot kodimizni (KinoRixBot.php) web-serverning to'g'ri papkasiga nusxalaymiz
COPY KinoRixBot.php /var/www/html/
