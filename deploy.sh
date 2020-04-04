ADMIN_PASSWORD_HASH=''

docker-compose up -d

docker exec adminafk-mysql /bin/change_password.sh $ADMIN_PASSWORD_HASH

