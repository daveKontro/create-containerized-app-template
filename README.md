![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2FdaveKontro%2Fcreate-containerized-app-template%2Fmain%2Fpackage.json&query=%24.engines.node&logo=nodedotjs&label=node&labelColor=%23182f37&color=%23e2b432)
![Static Badge](https://img.shields.io/badge/npm-v10.2.4-%23e2b432?logo=npm&labelColor=%23182f37)

# Create Containerized App Template (CCrATe)
This project provides a straightforward Docker file for new and experienced users.

The Docker file generates a container and installs a fully configured app template.

## install Docker
reference the [docs](https://docs.docker.com/engine/install/)

## install CCrATe
first install globally  
```
npm install -g create-containerized-app-template
```

then create your project  
```
npx create-containerized-app-template --name={my-project}
```

OR

clone the [repo](https://github.com/daveKontro/create-containerized-app-template)

## build and run container
build image `ccrate`
```
npm run build
```

run container `ccrate-app`
```
npm run dev
```

open http://localhost:3000 in browser

## the containerized app
access the container
```
npm run access
```

reference [create-application-template](https://www.npmjs.com/package/create-application-template) to learn more about the app

## other Docker commands
view container info
```
docker container inspect ccrate-app
```

list running containers
```
docker container ls
```

list all containers (including idle)
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
