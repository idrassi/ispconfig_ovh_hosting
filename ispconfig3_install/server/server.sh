#!/bin/sh

PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/X11R6/bin

. /etc/profile

umask 022

if [ -f /usr/local/ispconfig/server/lib/php.ini ]; then
        PHPINIOWNER=`stat -c %U /usr/local/ispconfig/server/lib/php.ini`
        if [ $PHPINIOWNER == 'root' ] || [ $PHPINIOWNER == 'ispconfig'  ]; then
                export PHPRC=/usr/local/ispconfig/server/lib
        fi
fi

cd /usr/local/ispconfig/server
/usr/bin/php -q /usr/local/ispconfig/server/server.php