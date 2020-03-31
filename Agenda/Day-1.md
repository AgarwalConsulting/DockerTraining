# Docker

## Fundamentals

### Defining the problem

- A primer on Microservices
  - 12 Factors for good µService design
  - [Phoenix Servers](https://martinfowler.com/bliki/PhoenixServer.html)
- Dependency Hell (The Isolation Problem)

### Virtualization

- VMs, Hypervisors and Containers
- How is it lightweight?

### Installation and Setup

- Running "Hello, World!" of Docker

### Primer

- Images and Layers
- Image inheritance
- Image names and tags
- Images vs Containers
  - Containers
- Process lifecycle
- Docker Registry / Repository
  - Private Registries
- Image as a black box

### Docker Cli - Seeing beyond `build` & `run`

- Containers
  - ps
  - rm
  - inspect
  - start
  - stop
  - restart
  - cp
  - logs
- Images
  - build
  - images
  - rmi
  - run
    - -d, -p, -it, --name, -e, -v
  - push
  - pull
  - tag

### Creating your first image

- From a running container
- `Dockerfile` (Infrastructure as Code)
- Commands
  - FROM
  - MAINTAINER (deprecated)
    - LABEL maintainer=""
  - WORKDIR
  - USER
  - RUN
  - EXPOSE
  - ADD
  - COPY
  - ENTRYPOINT
  - CMD

### Tips

- Single process per container
- Use volumes to persist data between restarts
  - any thing within the container will be thrown away when the container is stopped

---

## References

- Building a docker-like container from scratch using Go
  - [Video](https://www.youtube.com/watch?v=MHv6cWjvQjM&t=1316s)
  - [Code](https://github.com/lizrice/containers-from-scratch)

- [Are containers replacing VMs?](https://www.docker.com/blog/containers-replacing-virtual-machines/)
