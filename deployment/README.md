# User Management System Deployment

This guide provides instructions on how to deploy the User Management System, which consists of the REST API server, the web client, and the mobile client.

## Prerequisites

- Docker Desktop
- `docker-compose`
- `git`
- Bash or PowerShell

## Deployment Instructions

1. Clone the deployment repository:
    ```shell
    git clone https://github.com/5-day-assignment/user-management.git
    cd user-management/deployment
    ```
1. Run the setup script to clone the necessary repositories and start the services:
    ```shell
    # Either (using Bash)
    ./setup.sh
    # or (using Powershell)
    ./setup.ps1
    ```
    **Note for Windows Users**: Ensure that you have Git Bash installed if you intend to run the setup.sh script, as it uses Bash syntax.

## Accessing the Applications

- The *REST API Server* will be available at http://localhost:8080
- The *Web Client* will be available at http://localhost:5000
- The *Mobile Client*... TODO
