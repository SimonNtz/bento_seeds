#!/usr/bin/env bash

## Script installing Hyperledger Fabric binaries and environmnent

set -x

echo -- Installing Hyperledger Fabric environment --

BASHRC_PATH=/home/vagrant/.bashrc

cd.


## GOLANG ##
git clone https://github.com/udhos/update-golang
cd update-golang
sudo ./update-golang.sh

sudo update-alternatives --install "/usr/bin/go" "go" "/usr/local/go/bin/go" 0
sudo update-alternatives --set go /usr/local/go/bin/go

mkdir $HOME/go

echo 'export GOPATH=$HOME/go' >> $BASHRC_PATH
source $BASHRC_PATH
echo -- $GOPATH --

go version
go version go1.11.1 linux/amd64
which go
go env

## Docker suite ##
sudo apt-get update -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo apt-get install docker-compose -y
sudo usermod -a -G docker $USER

## NODE ##
sudo apt-get install nodejs npm python -y
sudo npm install -g node-gyp -y

# cd /vagrant/fabric-samples/docrec
# sudo npm init -y
# sudo npm install fabric-ca-client fabric-network crypto-js jsrsasign -S

# Hyperledger Fabric binaries install script

cd .
curl -sSL https://goo.gl/6wtTN5 | sudo bash -s # CHECK VERSIONNING