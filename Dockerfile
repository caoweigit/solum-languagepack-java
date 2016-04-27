#
# Solum Java Language Pack
#

# Pull base image.
FROM ubuntu:14.04

# Update sources.list
COPY sources.list /etc/apt/sources.list

# Install Java.
RUN \
  apt-get -yqq update && \
  apt-get -yqq install openjdk-7-jdk

# Install Tomcat


# Install maven
RUN apt-get -yqq install maven

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

COPY bin /solum/bin
