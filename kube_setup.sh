#!/bin/sh


# Install Docker
curl -sSL get.docker.com | sh && \
sudo usermod $USER -aG docker
sudo systemctl enable docker

# Install kubeadm
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list && \
sudo apt update -q && \
sudo apt install -qy kubeadm
