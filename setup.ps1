# Before running the script use: Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
# After running the script use: Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Default

# Exit on error
$ErrorActionPreference = 'Stop'

if (-Not (Test-Path "rest-api-server")) {
    git clone https://github.com/5-day-assignment/rest-api-server.git
}
if (-Not (Test-Path "web-client")) {
    git clone https://github.com/5-day-assignment/web-client.git
}
if (-Not (Test-Path "mobile-client")) {
    git clone https://github.com/5-day-assignment/mobile-client.git
}

docker-compose up --build
#docker-compose run --rm mobile-client
