youconfweb
==========

Homepage based on Magnolia CMS 5 and Apache Solr search server.

Author: David Toniolo <youconfapp@unittestcloud.com>

Partner projects: [youconfws](https://github.com/davidtoniolo/youconfws) & [youconfapp](https://github.com/davidtoniolo/youconfapp) 


ycweb-webapp
============

Magnolia webapp with MySQL backend configuration.


ycweb-project
=============

Magnolia module. Main project/website.


ycweb-searchserver
==================

Apache Solr Search Server with multi core configuration.


Prepare, install, deploy & run
==============================

Edit your hosts (local DNS) file. Replace xxx with IP of your database host IP:

	xxx.xxx.xxx.xxx youconfweb.dbhost
	127.0.0.1 youconfweb.development


Setup MySQL backend:

1. Create the DB user with: /SETUP/mysql/1_create_database_user.sql
2. Create database, tables and import data: /SETUP/mysql/2_install_magnolia.sql


Build submodules and run Magnolia webapp and Solr server with jetty:

	cd <your-local-path>/youconfweb
	mvn clean install
	cd <your-local-path>/youconfweb/ycweb-webapp
	mvn jetty:run-war
	cd <your-local-path>/youconfweb/ycweb-searchserver
	mvn jetty:run-war

Ready!

Magnolia CMS should run on http://youconfweb.development:8080

Solr Server should run on http://youconfweb.development:8983/solr


At first, you will see the installation screen of Magnolia CMS, because the SQL dump does not include the ycweb-project module.
So start the module installation and after that you can login with the standard user:

Username: superuser

Password: superuser

Now you're logged in on the Author instance of Magnolia CMS.


Troubleshooting
===============

**Building the ycweb-searchserver submodule fails**

Change the property value of solr.solr.home in <your-local-path>/youconfweb/ycweb-searchserver/profiles/dev/config.properties


Thanks to
=========

[pkainulainen](https://github.com/pkainulainen/maven-examples/tree/master/running-solr-with-maven)


Open Source Software
====================

This project uses the following great software:

[Magnolia CMS](http://www.magnolia-cms.com)
[Apache Solr](http://lucene.apache.org/solr)
[Apache Maven](http://maven.apache.org)
[MySQL](http://www.mysql.de)
[AngularJS](http://angularjs.org)
[Bootstrap](http://getbootstrap.com)
