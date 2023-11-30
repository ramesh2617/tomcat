Jenkins Installation
=====================

1)Ensure that your software packages are up to date on your instance by using the following command to perform a quick software update:

    sudo yum update –y

2)Add the Jenkins repo using the following command:
===================================================
   sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

3)Import a key file from Jenkins-CI to enable installation from the package:
  ===============================================================================
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
  sudo yum upgrade

4)Install Java (Amazon Linux 2):
  ===========================================
  sudo amazon-linux-extras install java-openjdk11 -y

5) Install Java (Amazon Linux 2023):
============================================
  sudo dnf install java-11-amazon-corretto -y

6)Install Jenkins:
  ========================
   sudo yum install jenkins -y

7)Enable the Jenkins service to start at boot:
===================================================
  
  sudo systemctl enable jenkins

8)Start Jenkins as a service:
=========================================
   sudo systemctl start jenkins

You can check the status of the Jenkins service using the command:

   sudo systemctl status jenkins

Port number change Location
vi /etc/sysconfig/jenkins
