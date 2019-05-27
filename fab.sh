cd
git clone https://github.com/udhos/update-golang
cd update-golang
sudo ./update-golang.sh


sudo update-alternatives --install "/usr/bin/go" "go" "/usr/local/go/bin/go" 0
sudo update-alternatives --set go /usr/local/go/bin/go


mkdir $HOME/go
export GOPATH=$HOME/go

go version
go version go1.11.1 linux/amd64
which go
/usr/bin/go
go env

curl -sSL http://bit.ly/2ysbOFE | bash 



sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


sudo apt-get update


sudo apt-get install docker-ce docker-ce-cli containerd.io