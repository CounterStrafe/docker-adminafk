FROM php:7.0-apache

# update packages
RUN apt-get update

# install required packages
RUN apt-get -y install curl unzip

# install apache extensions
RUN docker-php-ext-install pdo_mysql

# clean html directory
RUN rm -Rf /var/www/html/*

# download repo and unzip repo
RUN curl -L https://github.com/lyon-esport/AdminAFK/archive/v1.8.0.zip >> /tmp/adminafk.zip && \
    unzip -d /tmp /tmp/adminafk.zip && \
    mkdir /var/www/html/adminafk && \
    mv /tmp/AdminAFK-1.8.0/* /var/www/html/adminafk/ && \
    rm -rf /tmp/*

# set workdir
WORKDIR /var/www/html/adminafk

# remove useless files
RUN rm adminafk.sql server.csv team.csv
