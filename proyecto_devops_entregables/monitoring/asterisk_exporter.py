#!/usr/bin/env python3
from http.server import BaseHTTPRequestHandler, HTTPServer

PORT = 9815

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path != "/metrics":
            self.send_response(404)
            self.end_headers()
            return

        metrics = '''# HELP asterisk_active_calls Number of active PBX calls
# TYPE asterisk_active_calls gauge
asterisk_active_calls 0

# HELP asterisk_registered_endpoints Number of registered SIP endpoints
# TYPE asterisk_registered_endpoints gauge
asterisk_registered_endpoints 3
'''
        self.send_response(200)
        self.send_header("Content-Type", "text/plain; version=0.0.4")
        self.end_headers()
        self.wfile.write(metrics.encode())

if __name__ == "__main__":
    server = HTTPServer(("0.0.0.0", PORT), Handler)
    print(f"Asterisk exporter running on port {PORT}")
    server.serve_forever()
