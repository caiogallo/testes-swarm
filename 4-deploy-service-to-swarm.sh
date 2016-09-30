#!/bin/bash
eval "$(docker-machine env swarm-host-1)"
docker service create --replicas 1 --name helloworld alpine ping docker.com
docker service ps helloworld
docker service scale helloworld=5
docker service ps helloworld
docker service scale helloworld=1
docker service ps helloworld
