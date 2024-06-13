#!/bin/bash

export CACHEBUSTER=$RANDOM
sudo CACHEBUSTER=$CACHEBUSTER docker-compose down
sudo CACHEBUSTER=$CACHEBUSTER docker-compose up -d --build --force-recreate
