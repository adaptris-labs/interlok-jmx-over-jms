# interlok-jmx-over-jms

Sample docker project that demostrates the Interlok JMX over JMS capability using ActiveMQ as the underlying JMS provider. It also showcases how we can override various bootstrap properties via use of system properties

- `-Dinterlok.mgmt.components` to override managementComponents.
- `-Dinterlok.jmxserviceurl` to override the jmxservice url.

See [Interlok JMX over JMS](http://interlok.adaptris.net/interlok-docs/advanced-jmx-jms.html) documentation for more detail.

## Running

```
$ ./gradlew docker
$ ./gradlew dockerComposeUp
```

- Connect via your browser as normal to `http://localhost:8080`
