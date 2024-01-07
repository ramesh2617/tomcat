https://tomcat.apache.org/download-90.cgi

https://medium.com/@nicholas.omorogbe/how-to-integrate-tomcat-server-in-cicd-pipeline-4401c804c79f

https://github.com/cameronmcnz/rock-paper-scissors.git

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

====================================================================================================================================

step-1
==========
docker login ghcr.io -u ramesh2617 -p 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

step-2
========
docker tag  ef41c7556778  ghcr.io/ramesh2617/devops/ramesh10654/myapp:1

step-3
======
docker push ghcr.io/ramesh2617/devops/ramesh10654/myapp:1





grfana install
=====================
docker run -d --name=grafana -p 3000:3000 grafana/grafana-enterprise


network create
===============
docker network create monitoring

docker network connect monitoring grafana

prometheus install
=========================
docker run -d --name prometheus -p 9090:9090 --network monitoring prom/prometheus

node exporter install
======================
docker run -d --name node-exporter --network monitoring -p 9100:9100 prom/node-exporter

Install Prometheus Pushgateway:
===========================
docker run -d -p 9091:9091 --name pushgateway prom/pushgateway


Install Google cAdvisor
=======================
docker run -d --name cadvisor --network=monitoring --privileged -p 8080:8080 -v /:/rootfs:ro -v /var/run:/var/run:rw -v /sys:/sys:ro -v /var/lib/docker/:/var/lib/docker:ro google/cadvisor:latest


15798



