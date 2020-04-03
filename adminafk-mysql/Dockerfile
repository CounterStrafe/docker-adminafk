FROM mysql:5.7

# update packages
RUN apt-get update

# install required packages
RUN apt-get -y install wget unzip

# downlaod repo and move adminafk.sql into /docker-entrypoing-initdb.d/
RUN wget -O /tmp/adminafk.zip https://github.com/lyon-esport/AdminAFK/archive/v1.8.0.zip && \
    unzip -d /tmp /tmp/adminafk.zip && \
    mv /tmp/AdminAFK-1.8.0/adminafk.sql /docker-entrypoint-initdb.d/adminafk.sql && \
    rm -rf /tmp/*
