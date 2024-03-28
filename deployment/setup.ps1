# Exit on error
$ErrorActionPreference = 'Stop'

$DEPLOYMENT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path

Set-Location $DEPLOYMENT_DIR\..

if (-Not (Test-Path "rest-api-server")) {
    git clone https://github.com/5-day-assignment/rest-api-server.git
}
if (-Not (Test-Path "web-client")) {
    git clone https://github.com/5-day-assignment/web-client.git
}
if (-Not (Test-Path "mobile-client")) {
    git clone https://github.com/5-day-assignment/mobile-client.git
}

Set-Location $DEPLOYMENT_DIR

docker-compose up --build
