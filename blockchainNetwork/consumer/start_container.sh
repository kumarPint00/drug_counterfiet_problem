#!/bin/bash

chmod u+x ./cli-scripts/*

sleep 1

mkdir -p $PWD/fabric-ca-server

docker-compose -f docker-compose-consumer.yaml up -d

sleep 5
docker exec cli-consumer scripts/create-common-network.sh


