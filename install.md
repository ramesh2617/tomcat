https://tomcat.apache.org/download-90.cgi

https://medium.com/@nicholas.omorogbe/how-to-integrate-tomcat-server-in-cicd-pipeline-4401c804c79f

Step 1: Download Tomcat 
===========================
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz

Step 2: Extract the Tomcat Archive
===================================
tar xvzf apache-tomcat-9.0.80.tar.gz 
ls
remove above file after extract
rm -rf  apache-tomcat-9.0.80.tar.gz

Step 3: Move the Tomcat Directory
===================================
ls
mv apache-tomcat-9.0.80/ tomcat
ls---> now showing directory name Tomcat

cd tomcat
ls 

what are the ports open still now showing below command
======================================================

sudo lsof -i -P -n | grep LISTEN

step 4 : Install JAVA
========================
yum install java -y

ls
cd bin directory
ls

showing start and stop tomcat server

start tomcat server
=================
startup.sh (or) ./startup.sh

How to change Tomcat port number
===================================
cd conf/
ls
showing server.xml file
edit--> connector port location change your deafault port number

cd bin/
sh shutdown.sh
sh startup.sh





