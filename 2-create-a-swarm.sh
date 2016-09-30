#!/bin/bash
eval $(docker-machine env swarm-host-1)
docker swarm init --advertise-addr 192.168.99.100
