# Overview
Dockerized [BombSquad](https://www.froemling.net/apps/bombsquad) Server

## Docker Hub
[abrucker235/bombsquad-server](https://hub.docker.com/r/abrucker235/bombsquad-server)

## Building

### Raspberry Pi v4

```
docker buildx build --platform linux/arm/v7 -t abrucker235/bombsquad-server:1.4.147 .
```

## Running

### Docker
```
docker run -it -v ${PWD}/config.py:/bombsquad/config.py -p 43210:43210/udp abrucker235/bombsquad-server:1.4.147
```
