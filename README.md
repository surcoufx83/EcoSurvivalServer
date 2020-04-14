# Eco Survival Game Server for Docker

https://www.strangeloopgames.com/eco/

https://hub.docker.com/r/fangedhex/ecosurvivalserver/

## How to launch

```
docker run -d -p 3000:3000/udp -p 3001:3001 -v <storageDirOnHost>:/app/Storage fangedhex/ecosurvivalserver
```
It will run Eco Server on 0.8.3.3-beta version

## Custom eco version

First, check if there is no tag for the version you want on Docker Hub.

If not you can build, the version you want directly from my repository like this :

```
docker build -t ecosurvivalserver --build-arg ECO_VERSION=0.8.3.3-beta https://github.com/surcoufx83/EcoSurvivalServer.git
```

Replace 0.8.3.3-beta by the version you need
