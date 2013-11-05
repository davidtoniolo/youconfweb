youconfweb
==========

Homepage based on Magnolia CMS 5

Author: David Toniolo <youconfapp@unittestcloud.com>

Partner projects: [youconfws](https://github.com/davidtoniolo/youconfws) & [youconfapp](https://github.com/davidtoniolo/youconfapp) 


Prepare, install, deploy & run
==============================

Edit your hosts (local DNS) file. Replace xxx with IP of your database host IP:

	xxx.xxx.xxx.xxx youconfweb.dbhost
	127.0.0.1 youconfweb.development


Setup MySQL backend:

1. Create the DB user with: /SETUP/mysql/1_create_database_user.sql
2. Create database, tables and import data: /SETUP/mysql/2_install_magnolia.sql


Build submodules and run the webapp with jetty:

	cd <your-local-path>/youconfweb
	mvn clean install
	cd <your-local-path>/youconfweb/ycweb-webapp
	mvn jetty:run-war

Ready! Magnolia CMS should run on http://youconfweb.development:8080

At first, you will see the installation screen of Magnolia, because the SQL dump does not include the ycweb-project module. 
So start the module installation and after that you can login with the standard user:

Username: superuser
Password: superuser

Now you're logged in on the Author instance of Magnolia CMS.


Open Source Software
====================

This project uses the following great software:

[Magnolia CMS](http://www.magnolia-cms.com)
[MySQL](http://www.mysql.de)
[Apache Maven](http://maven.apache.org)
[AngularJS](http://angularjs.org)
