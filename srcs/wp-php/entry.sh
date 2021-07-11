#!/bin/sh

mkdir -p /var/www/html/ &&
rm -rf /var/www/html/* &&
cp -r /wordpress/* /var/www/html/
bash /gen_php.sh
echo -e -n '<?php \n phpinfo(); \n?>' > /var/www/html/phpinfo.php
php-fpm7.3 -F -R
