FROM jenkins:latest

COPY config/plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt

COPY config/config.xml /usr/share/jenkins/ref/config.xml
