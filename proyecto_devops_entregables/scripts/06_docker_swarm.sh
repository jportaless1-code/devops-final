#!/bin/bash
set -e
PRIVATE_IP=$(hostname -I | awk '{print $1}')
docker swarm init --advertise-addr $PRIVATE_IP || true
docker service create --name swarm-demo --publish 8082:80 --replicas 2 nginx || true
docker service ls
