#!/bin/sh

# Disable swap
sudo swapoff -a  
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# Install Docker
curl -sSL get.docker.com | sh && \
sudo usermod $USER -aG docker
sudo systemctl enable docker

# Install kubeadm
sudo apt install curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list && \
sudo apt update -q && \
sudo apt install -qy kubeadm

exit 0
