cat /wp-config.php | sed 's/WORDPRESS_PASSWORD/'"$PASSWDDB"'/g' > /var/www/html/wp-config.php
