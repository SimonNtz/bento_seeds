#!/usr/bin/env bash

echo start docrec provisioning

VAGRANT_PATH=/home/vagrant
mkdir -p $VAGRANT_PATH/fabric-samples/docrec 
cp $VAGRANT_PATH/docrec/docrec.go $VAGRANT_PATH/fabric-samples/docrec/ 

mkdir -p $VAGRANT_PATH/fabric-samples/chaincode/docrec/
cd $VAGRANT_PATH/fabric-samples/docrec && npm init -y
cp $VAGRANT_PATH/docrec/*.js $VAGRANT_PATH/fabric-samples/docrec
sudo npm install fabric-ca-client fabric-network crypto-js jsrsasign -S


