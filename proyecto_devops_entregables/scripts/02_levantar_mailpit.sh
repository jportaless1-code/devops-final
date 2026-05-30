#!/bin/bash
set -e
docker rm -f mailpit 2>/dev/null || true
docker run -d --name mailpit --restart unless-stopped -p 1025:1025 -p 8025:8025 axllent/mailpit
