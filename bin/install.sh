#!/bin/sh
set -e

# formatting colors
grn="\x1b[32m"
end="\x1b[0m"

# install Craft
printf "\n${grn}+ Installing Craft (This may take a few minutes)...${end}\n"

# generate a new Craft app in the /tmp directory
# and copy the generated files into the /app directory
cd /tmp
composer create-project craftcms/craft craft -s beta
shopt -s dotglob
cp -a craft/* /app
cd -

# update db config
curl -sL https://raw.githubusercontent.com/sanderson/nanobox-craft3-bootstrap/master/templates/db.php > config/db.php

# running app info
text="
--------------------------------------------------------------------\n
${grn}+ Starting Craft
+ Once started, setup Craft at $APP_IP/admin${end}\n
--------------------------------------------------------------------\n
"
printf "$text"

# start Craft
php-server
