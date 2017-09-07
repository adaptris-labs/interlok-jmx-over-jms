# interlok-jmx-over-jms

Sample docker project that demostrates the Interlok JMX over JMS capability.

See [Interlok JMX over JMS](http://interlok.adaptris.net/interlok-docs/advanced-failover.html) documentation for more detail.

## Running

```
$ docker-compose -f docker-compose.yaml up
```


## Notes

The following helper script has been provided to add worker instances to the management instance (http://localhost:8080):

```
$ ls scripts/
add_instances_to_manager.sh 
$ ./scripts/add_instances_to_manager.sh
Adding 00364d0630d3
{"jmxUid":"00364d0630d3","url":"service:jmx:activemq:///tcp://activemq:61616?jmx.type=Topic&jmx.destination=jmxTopic","id":2,"name":"00364d0630d3"}
```
