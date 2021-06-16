FROM adaptris/interlok-base:latest-zulu

EXPOSE 8080

COPY lib /opt/interlok/lib
COPY webapps /opt/interlok/webapps
COPY config /opt/interlok/config
