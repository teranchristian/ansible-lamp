# Default Apache virtualhost template

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot {{ apache.docroot }}
    ServerName {{ apache.servername }}

    <Directory {{ apache.docroot }}>
        AllowOverride All
        Options Indexes FollowSymLinks
        Order deny,allow
        Allow from all
    </Directory>
</VirtualHost>

<VirtualHost *:80>
   ServerName dev.eldato.com
   DocumentRoot /var/www/pub/eldato/frontend/web/

   <Directory "/var/www/pub/eldato/frontend/web/">
       # use mod_rewrite for pretty URL support
       RewriteEngine on
       # If a directory or a file exists, use the request directly
       RewriteCond %{REQUEST_FILENAME} !-f
       RewriteCond %{REQUEST_FILENAME} !-d
       # Otherwise forward the request to index.php
       RewriteRule . index.php

       # use index.php as index file
       DirectoryIndex index.php

   </Directory>
</VirtualHost>
