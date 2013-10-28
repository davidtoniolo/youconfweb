youconfweb
==========

Homepage based on Magnolia CMS 5.0


Prepare, install, deploy & run
==============================

Edit your hosts (local DNS) file. Replace with IP of your database host IP:

	xxx.xxx.xxx.xxx youconfweb.development
	127.0.0.1 youconfweb.development


Setup MySQL backend:

1. Create the DB user with: /INSTALL/sql/1_create_database_user.sql
2. Create database, tables and import data: /INSTALL/sql/2_create_and_import_database_youconfwebcms.sql


Build submodules and run the webapp with jetty:

	cd <your-local-path>/youconfweb
	mvn clean install
	cd <your-local-path>/youconfweb/ycweb-webapp
	mvn jetty:run-war


Ready! Magnolia CMS should run on http://youconfweb.development:8080


Open Source Software
====================

This project uses the following great software:

[Magnolia CMS](http://www.magnolia-cms.com)
[MySQL](http://www.mysql.de)
[Apache Maven](http://maven.apache.org)
