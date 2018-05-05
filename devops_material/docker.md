
Docker commands

Setup Dockerhub account
======

Create a new user in https://hub.docker.com


Install Docker
======

```sh
sudo apt-get install docker-engine
sudo yum install docker-engine
```

Docker operations
======

```sh
docker login
Give the same creds as in website
```
```sh
docker pull nginx:latest
docker images
docker run -itd nginx 
docker ps
docker exec -it <image_id> bash
docker attach <image_id>
```
To build and push image
```sh
Create Dockerfile
docker build -t docker_id/name .
docker build -t ramdock/nginx .
docker push ramdock/nginx
```

Docker Network
======
```sh
docker network ls
docker network create -d bridge mybridge 
docket network inspect 
docket network inspect mybridge
docker run --net=bridge --name nginx1 -itd ramdock/nginx:v1 bash
docker run --net=host --name nginx2 -itd ramdock/nginx:v1 bash
docker run --net=none --name nginx3 -itd ramdock/nginx:v1 bash
docker run --net=mybridge --name nginx4 -itd ramdock/nginx:v1 bash
docker exec -it nginx1 bash
```

Docker Volume
======
```sh
docker create -v /tmp -name datavol ramdock/nginx:v1
docker run --name nginx5 --volumes-from datavol -itd ramdock/nginx:v1 bash
```
```
docker run --name nginx6 -v ~/nginx_log:/var/log/nginx -itd ramdock/nginx:v1 bash
On base host - cd ~/nginx_log; touch file
On container - cd /var/log/nginx; ls 
```


Docker Ports
======
```sh
docker run --name nginx7 -P -itd ramdock/nginx:v1 bash
docker ps
Try on browser - http://localhost:PORT
```
```sh
docker run --name nginx8 -p 8080:80 -itd ramdock/nginx:v1 bash
docker ps
Try on browser - http://localhost:8080
```

Resources
======
https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/

https://docs.docker.com/engine/swarm/swarm-tutorial/

https://kubernetes.io/docs/tutorials/stateless-application/hello-minikube/

https://blog.codeship.com/getting-started-with-kubernetes/
