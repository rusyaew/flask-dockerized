#!/bin/bash

/bin/echo  "127.0.0.1	flask" >> /etc/hosts

/usr/sbin/a2enmod wsgi
/etc/init.d/apache2 start

/usr/bin/tail -f /dev/null
