#!/bin/bash
set -e
docker rm -f asterisk 2>/dev/null || true
docker run -d --name asterisk --restart unless-stopped -p 5060:5060/udp -p 10000-20000:10000-20000/udp andrius/asterisk
