#!/bin/bash
set -e
mkdir -p ~/caddy
cat > ~/caddy/Caddyfile <<'EOF'
18.223.47.13.sslip.io {
    reverse_proxy localhost:8081
}
EOF
docker rm -f caddy 2>/dev/null || true
docker run -d --name caddy --restart unless-stopped --network host -v ~/caddy/Caddyfile:/etc/caddy/Caddyfile -v caddy_data:/data -v caddy_config:/config caddy
