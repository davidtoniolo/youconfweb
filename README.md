youconfweb
==========

Homepage based on Magnolia CMS 5.0


Prepare, install, deploy & run
==============================

Build submodules and run the webapp with jetty:

	cd <your-local-path>/youconfweb
	mvn clean install
	cd <your-local-path>/youconfweb/ycweb-webapp
	mvn jetty:run-war
