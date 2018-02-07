#!/usr/bin/env bash
mvn clean install
mvn exec:java -Dexec.mainClass="com.redhat.openshift.caching.examples.HotRodExternalExample" -Dexec.args="$1"

