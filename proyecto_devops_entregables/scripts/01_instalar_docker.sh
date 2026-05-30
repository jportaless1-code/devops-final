#!/bin/bash
set -e
sudo apt update
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker $USER
docker --version
