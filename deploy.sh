#!/usr/bin/env bash
docker build -t gs-rest-service-10203 .
docker rm -f gs-rest-service-10203 &> /dev/null || true
docker run \
   -d --name gs-rest-service-10203 \
   -p 10203:8080 \
   gs-rest-service-10203