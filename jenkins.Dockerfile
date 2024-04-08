FROM jenkins/jenkins:alpine
MAINTAINER devops_project <dev@ops.com>

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080
# EXPOSE 50000 # uncomment this line if you want to attach slaves to this container
