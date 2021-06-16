# test-for-wp
About
=============================

Deploy and initialize Wordpress with the two-factor authentication plugin installed.

REQUIREMENTS
------------

Before starting, make sure you have docker-compose installed.

INSTALLATION
------------

To download the very latest source from the Git server do this:

    git clone https://github.com/khmarski/test-for-wp.git

Go to the directory where the downloaded files are located.
The default settings can be edited.

--url="url" The address of the new site.

--title="site-title" The title of the new site.

--admin_user="username" The name of the admin user.

--admin_password="password" The password for the admin user. Defaults to randomly generated string.

--admin_email="email" The email address for the admin user.

The default settings:

--url="localhost:8000"
 
--title="test deploy wp" 

--admin_user="admin" 

--admin_password="admin@pass" 

--admin_email="admin@domain.com" 

wp plugin install two-factor --activate -> Download, install and activate the plugin two-factor.

Run "docker-compose up -d" from your project directory.

Open http://localhost:8000/wp-admin/ in a web browser and then -> Users -> All users -> select the admin user (for example). 

Scroll to Two-Factor Options and enable Two-Factor Authentication for user.
log out and open http://localhost:8000/wp-admin/, checking autontification.

SHUTDOWN AND ClEANUP
--------------------

The command "docker-compose down" removes the containers and default network, but preserves your WordPress database.

The command "docker-compose down --volumes" removes the containers, default network, and the WordPress database. 