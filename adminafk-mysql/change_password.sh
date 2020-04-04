#! bin/bash

ADMIN_PASSWORD_HASH="$1"

# wait for database to come up
while ! nc -z 127.0.0.1 3306; do sleep 3; done

mysql -u adminafk --password="adminafk" -D adminafk -e "UPDATE \`users\` SET \`password\` = \"$ADMIN_PASSWORD_HASH\" WHERE \`login\` = \"admin\";"

