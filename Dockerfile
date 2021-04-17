FROM openjdk:8u282-jdk

MAINTAINER Hyokeun Jeon <hyokeun@gmail.com>

RUN apt-get update && \
    apt-get install -y wget 

RUN wget -q https://www.pmease.com/artifacts/5309/quickbuild-11.0.2.tar.gz && \
    tar -zxvf quickbuild-11.0.2.tar.gz -C /opt 

EXPOSE 8810

ENTRYPOINT /opt/quickbuild-6.0.9/bin/server.sh console
