#!/bin/bash

apt-get update -y && sudo apt-get upgrade -y
apt-get install -y ca-certificates curl -y

install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update -y

apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

groupadd docker || true
usermod -aG docker $USER

newgrp docker

systemctl enable docker.service
systemctl enable containerd.service

systemctl start docker

# sudo systemctl status docker
