#!/bin/bash

chmod u+x ./cli-scripts/*

sleep 1

mkdir -p $PWD/fabric-ca-server

docker-compose -f docker-compose-retailer.yaml up -d

sleep 5
docker exec cli-retailer scripts/create-common-network.sh


