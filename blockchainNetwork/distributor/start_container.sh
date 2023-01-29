#!/bin/bash

chmod u+x ./cli-scripts/*

sleep 1

mkdir -p $PWD/fabric-ca-server

docker-compose -f docker-compose-distributor.yaml up -d

sleep 5
docker exec cli-distributor scripts/create-common-network.sh


