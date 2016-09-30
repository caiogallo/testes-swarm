#!/bin/bash
read -p 'swarm manager token: ' token
for num in 2 3 4
do
	eval "$(docker-machine env swarm-host-$num)"

	docker swarm join \
		--token $token \
		192.168.99.100:2377
done
