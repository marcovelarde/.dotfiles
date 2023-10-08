#!/usr/bin/bash

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

sudo systemctl start docker.service
sudo systemctl enable docker.service
