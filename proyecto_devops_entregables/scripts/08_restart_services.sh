#!/bin/bash
docker restart mailpit || true
docker restart prometheus || true
docker restart grafana || true
docker restart node-exporter || true
docker restart asterisk || true
docker restart devops-app || true
docker restart caddy || true
sudo systemctl restart jenkins || true
docker ps
