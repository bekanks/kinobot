# 1. Apache va PHP o'rnatilgan tayyor muhitni tanlaymiz
FROM php:8.2-apache

# 2. Botimiz ishlashi uchun kerakli PHP kengaytmalarini (mysqli va curl) o'rnatamiz
RUN docker-php-ext-install mysqli curl

# 3. Bizning bot kodimizni (bot.php) web-serverning to'g'ri papkasiga nusxalaymiz
COPY KinoRixBot.php /var/www/html/
