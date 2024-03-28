#!/bin/bash

# Exit on error
set -e

[ ! -d "rest-api-server" ] && git clone https://github.com/5-day-assignment/rest-api-server.git
[ ! -d "web-client" ] && git clone https://github.com/5-day-assignment/web-client.git
[ ! -d "mobile-client" ] && git clone https://github.com/5-day-assignment/mobile-client.git

docker-compose up --build
#docker-compose run --rm mobile-client
