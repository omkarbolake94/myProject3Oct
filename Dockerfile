# You can change this base image to anything else
# But make sure to use the correct version of Java
##FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
##ARG artifact=target/spring-boot-web.jar

##WORKDIR /opt/app

##COPY ${artifact} app.jar

# This should not be changed
##ENTRYPOINT ["java","-jar","app.jar"]

#FROM openjdk:8
#ENTRYPOINT ["java","-jar","target/spring-boot-web.jar"]
FROM  redhat/ubi9-init
RUN yum install wget -y
RUN yum install maven -y
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
&& tar xzvf docker-17.04.0-ce.tgz \
&& mv docker/docker /usr/local/bin \
