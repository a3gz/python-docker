This package provides a set up to run an Ubuntu Linux terminal inside a Docker container.

The goal is to setup a work environment to study Python without having to install the required software in the host computer.

## Build the image

    docker compose up --build -d

## Open the terminal

If nothing was changed in any of the configuration files `Docker` nor `docker-compose.yml` run the following command: 

    docker container exec -it python-docker-terminal-1 bash


**This approach is meant to be used for learning purposes only.**
