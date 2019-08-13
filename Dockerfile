FROM quay.io/redsift/baseos
LABEL maintainer="Dmitry Motylev <dmitry@redsift.io>"
LABEL version="1.2.0"

COPY install-openjdk /tmp/install-openjdk 

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install unzip && \
    /tmp/install-openjdk && \
    rm /tmp/install-openjdk && \
    apt-get purge -y unzip && \
    apt-get autoremove -y

ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8
