#!/bin/sh
echo " ----------------------------"
echo "|         KUBE SETUP         |"
echo " ----------------------------"


# Define hostname
read -p "Inserir hostname para este node: " HOST
sudo hostnamectl set-hostname "$HOST"

# Disable swap
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# Install Docker
curl -sSL get.docker.com | sh && \
sudo usermod $USER -aG docker
sudo systemctl enable docker

# Install kubeadm
sudo apt install -y curl apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list && \
sudo apt update -q && \
sudo apt install -qy kubeadm kubelet kubectl

exit 0
