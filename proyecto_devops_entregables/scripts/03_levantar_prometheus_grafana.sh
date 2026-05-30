#!/bin/bash
set -e
docker compose up -d prometheus grafana node-exporter
