#!/bin/sh
STARTED="/var/www/Lychee/uploads/import/.STARTED"
if [ ! -e $STARTED ]; then
    touch $STARTED
    echo "Ejecuto"
    php php/install.php 
fi

/usr/bin/supervisord -c /etc/supervisord.conf
