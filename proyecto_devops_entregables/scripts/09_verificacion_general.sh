#!/bin/bash
echo "=== DISCO ==="
df -h
echo "=== MEMORIA ==="
free -h
echo "=== CONTENEDORES ==="
docker ps
echo "=== DOCKER SPACE ==="
docker system df
echo "=== PUERTOS ==="
sudo ss -tulpn | grep -E '80|443|1025|3000|5060|8025|8080|8081|8082|9090|9100|1521|5500' || true
