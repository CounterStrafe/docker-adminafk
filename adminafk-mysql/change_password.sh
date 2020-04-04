#! bin/bash

ADMINAFK_PASSWORD_ADMINAFK="$1"
ADMIN_PASSWORD_HASH="$2"

# wait for database to come up
while ! nc -z 127.0.0.1 3306; do sleep 3; done

mysql -u adminafk --password="$ADMINAFK_PASSWORD_ADMINAFK" -D adminafk -e "UPDATE \`users\` SET \`password\` = \"$ADMIN_PASSWORD_HASH\" WHERE \`login\` = \"admin\";"

