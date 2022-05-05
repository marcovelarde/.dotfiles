#!/usr/bin/bash

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

systemctl start docker.service
systemctl enable docker.service
