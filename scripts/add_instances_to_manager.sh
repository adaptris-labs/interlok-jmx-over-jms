#!/bin/bash

function add() {
  id=$1
  echo "Adding $id"
  curl -X POST -s --user "admin:admin" --header 'Content-Type: application/json' --header 'Accept: application/json' -d "{\"name\": \"$id\",\"jmxUid\": \"$id\",\"url\": \"service:jmx:activemq:///tcp://activemq:61616?jmx.type=Topic&jmx.destination=jmxTopic\"}" "http://localhost:8080/interlok/api/external/adapter"
  echo ""
}

docker ps -a | grep "mcwarman/interlok-jmx-worker:snapshot" | grep Up | awk '{print $1}' |while read machine; do
  add "$machine"
done
