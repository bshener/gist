#!/bin/bash

echo "Running script... 🚀"

sudo apt update &&\
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common &&\
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - &&\
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" &&\
sudo apt update &&\
apt-cache policy docker-ce &&\
sudo apt install -y docker-ce &&\
sudo apt install -y docker-compose &&\
sudo usermod -aG docker ${USER} \

echo "Done. 👍"
