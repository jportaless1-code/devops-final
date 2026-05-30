#!/bin/bash
set -e
sudo mkdir -p /data/oracle/oradata
sudo chown -R 54321:54321 /data/oracle
docker rm -f oracle-db 2>/dev/null || true
docker run -d --name oracle-db --restart unless-stopped -p 1521:1521 -p 5500:5500 -e ORACLE_PWD=Oracle12345 -v /data/oracle/oradata:/opt/oracle/oradata container-registry.oracle.com/database/free:latest
