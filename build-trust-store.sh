#!/usr/bin/env bash
echo "Retrieving secret with certificates via OC"
oc get secret service-certs -o yaml | grep "tls\.crt" | sed 's/  tls.crt: //g' | base64 -d > caching-service.cer

echo "Generating caching-service-trust-store.jks via keytool"
keytool -import -noprompt -v -trustcacerts -keyalg RSA -alias "Caching Service" -file "caching-service.cer" -keypass "secret" -storepass "secret" -keystore caching-service-trust-store.jks

rm caching-service.cer
