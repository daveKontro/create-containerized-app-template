![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2FdaveKontro%2Fcreate-application-template%2Fmain%2Fpackage.json&query=%24.engines.node&logo=nodedotjs&label=node&labelColor=%23182f37&color=%23e2b432)
![Static Badge](https://img.shields.io/badge/npm-v10.2.4-%23e2b432?logo=npm&labelColor=%23182f37)

# Create Containerized App Template
This project provides a straightforward Docker file for new and experienced users.

The Docker file generates a container and installs a fully configured app template.

## usage
build image `ccrate`
```
docker build -t ccrate .
```

run container `ccrate-app`
```
docker run -p 127.0.0.1:3000:3000 --name ccrate-app -it ccrate
```

open http://localhost:3000 in browser

## other Docker commands
view container info
```
docker container inspect ccrate-app
```

access container
```
docker exec -it -u node ccrate-app /bin/bash
```

list running containers
```
docker container ls
```

list all containers (including not running)
```
docker container ls -a
```

list images
```
docker images
```

remove container
```
docker container rm ccrate-app
```

remove image
```
docker rmi ccrate:latest 
```
