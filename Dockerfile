FROM quay.io/redsift/baseos
LABEL maintainer="Dmitry Motylev <dmitry@redsift.io>"
LABEL version="1.2.0"

COPY install-oracle-java /tmp/install-oracle-java

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    /tmp/install-oracle-java && \
    rm /tmp/install-oracle-java

ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8
