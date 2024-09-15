#!/bin/bash

docker run -d \
  -p 127.0.0.1:9443:9443 \
  --name portainer \
  --restart=always \
  --network proxy \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:2.21.1