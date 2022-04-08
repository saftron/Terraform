#!/bin/bash


# Install Terraform
echo "[TASK 1] Install Base Packages"
apt-get update >/dev/null 2>&1
apt-get install -y  jq wget unzip  >/dev/null 2>&1

# Download Terraform
echo "[TASK 2] Install Terraform Packages"
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
terraform --version
