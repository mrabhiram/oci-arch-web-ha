#!/bin/bash
sudo echo "Starting the script"

sudo echo $1, $2, $3

sudo echo "disable the firewall"

sudo service firewalld stop
sudo systemctl disable firewalld


# Installing the docker engine
sudo echo "Installing the docker engine"

sudo yum update -y
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum update -y
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl enable docker
sudo systemctl start docker

USERNAME=$2
PASSWORD=$3

# Pulling the docker image from docker hub
sudo echo "Pulling the docker image from docker hub"

#sudo docker login --username="${USERNAME}" --password="${PASSWORD}"
sudo docker pull testuser2000/python-flask:python-flask-app

# deploying the app
sudo echo "deploying the app"
sudo docker run hello-world
sudo echo "Script run complete and exiting"
