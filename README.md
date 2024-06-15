# MyNodeBTC Update Server

This repository contains the setup and deployment files for the MyNodeBTC updater to build, run and update the MyNodeBTC update server in a containerized environment.

## Repository Contents

- **Dockerfile**: Defines the Docker image for the MyNodeBTC updater.
- **docker-compose.yml**: Configuration file for Docker Compose to manage the container.
- **runUpdateThisStack.sh**: Bash script to update and recreate the Docker container.
- **start-server.sh**: Script to start the MyNodeBTC file server within the container.

## Getting Started

### Prerequisites

- Docker
- Docker Compose

### Building and Running the Container

1. **Clone the repository**:
    ```sh
    git clone https://github.com/kaunofakultetas/mynodebtc-updater.git
    cd mynodebtc-updater
    ```

2. **Build and start the container**:
    ```sh
    chmod +x runUpdateThisStack.sh
    ./runUpdateThisStack.sh
    ```

3. **SSH into your MyNodeBTC instance and run update \
   (insert your actual updater IP address instead 1.2.3.4)**:
    ```sh
    sudo mynode-local-upgrade 1.2.3.4
    ```
    
## Contributing

Feel free to submit issues and pull requests. Please open an issue first to discuss what you would like to change.

## Acknowledgements

- MyNodeBTC team for the original MyNodeBTC repository.
- Docker for containerization tools.
- The open-source community for their continuous contributions.
