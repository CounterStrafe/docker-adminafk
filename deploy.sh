curl -L https://raw.githubusercontent.com/wmnnd/nginx-certbot/cb13104649e80f31797d8b76ad374bcdee4874d9/init-letsencrypt.sh > init-letsencrypt.sh

sed -i "s|example\.org www\.example\.org|test.com test.com|" init-letsencrypt.sh
sed -i "s|email=\"\"|email=\"test@test.com\"|" init-letsencrypt.sh

ADMINAFK_PASSWORD_ADMINAFK=''
ADMIN_PASSWORD_HASH=''

docker-compose up -d

docker exec adminafk-mysql /bin/change_password.sh $ADMINAFK_PASSWORD_ADMINAFK $ADMIN_PASSWORD_HASH

