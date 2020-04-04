FROM mysql:5.7

# update packages
RUN apt-get update

# install required packages
RUN apt-get -y install netcat unzip

ADD https://github.com/lyon-esport/AdminAFK/archive/v1.8.0.zip /tmp/adminafk.zip

# downlaod repo and move adminafk.sql into /docker-entrypoing-initdb.d/
RUN unzip -d /tmp /tmp/adminafk.zip && \
    mv /tmp/AdminAFK-1.8.0/adminafk.sql /docker-entrypoint-initdb.d/adminafk.sql && \
    rm -rf /tmp/*

COPY change_password.sh /bin/change_password.sh

