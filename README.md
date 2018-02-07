# Local Hot Rod client example
Very simple example of how to setup a local Hot Rod client running against a JDG Caching Service in an Openshift Online cluster.

## Pre-requisites
- You must have Openshift client tools installed and logged into the cluster, to retrieve service certificate.
- Maven installed
- JDK 8+

## Steps
- Retrieve service certificate and build trust store

    ./build-trust-store.sh

- Build & Run example    
    ./run-example <service route endpoint, example: caching-service-endpoint-hotrod-<my-project>.<id>.<cluster>.openshiftapps.com
    
