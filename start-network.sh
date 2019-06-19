#!/usr/bin/env bash

echo create agents certificate

FABRIC_PATH=/home/vagrant/fabric-samples

cd  $FABRIC_PATH/basic-network

# CRYPTO CREDENTIAL CLEANNING 
#sudo rm -rf crypto-config 
#./stop.sh && ./teardown.sh 

sudo ./generate.sh

./start.sh && docker-compose -f docker-compose.yml up -d cli

docker ps