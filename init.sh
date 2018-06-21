#!/bin/sh
STARTED="/var/www/Lychee/uploads/.STARTED"
if [ ! -e $STARTED ]; then
    touch $STARTED
    echo "Ejecuto"
    php php/install.php 
fi

/usr/bin/supervisord -c /etc/supervisord.conf
