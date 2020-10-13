FROM php:7-fpm-alpine

RUN docker-php-ext-install mysqli

RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev
RUN docker-php-ext-install gd
RUN apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev
