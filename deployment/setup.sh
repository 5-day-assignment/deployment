#!/bin/bash

# Exit on error
set -e

DEPLOYMENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$DEPLOYMENT_DIR/.."

[ ! -d "rest-api-server" ] && git clone https://github.com/5-day-assignment/rest-api-server.git
[ ! -d "web-client" ] && git clone https://github.com/5-day-assignment/web-client.git
[ ! -d "mobile-client" ] && git clone https://github.com/5-day-assignment/mobile-client.git

cd "$DEPLOYMENT_DIR"

docker-compose up --build
