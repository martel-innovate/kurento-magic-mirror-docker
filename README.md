# kurento-magic-mirror-docker
A simple containerized version of Kurento Magic Mirror demo

## How to run the Magic Mirror demo

1. set-up a docker swarm cluster (docker 1.13+)

1. export the endpoint of the docker host for having correct url rewrite of static files
```export MAGICHOST=dockermachineip```

1. launch the docker composition ```docker stack deploy -c docker-compose.yml example```

1. open the browser to the ip of the docker cluster manager and port 8443 ;)
