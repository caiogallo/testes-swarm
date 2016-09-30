#!/bin/bash
for num in 1 2 3 4 
do
	docker-machine create --driver virtualbox swarm-host-$num
done
