# Docker Training

## Advanced

### Debugging

- docker `log`
- docker `attach` for interactive logs
  - detach using: `CTRL` + `p`, `q`
- docker `exec`
- docker `export`
  - to dump running container's filesystem into an `.tar` file
- docker `diff`
  - A = added
  - C = changed
  - D = deleted
- docker `inspect`
- docker `stats`
- `docker top <container-name>`
- docker `history`

### Advanced cli commands

- Containers
  - docker `kill`
  - docker `pause`/`unpause`
  - docker `rename`
  - docker `restart`
  - docker `update`
    - `--restart always` nginx
  - docker `container prune`
- Images
  - docker `rmi`
  - docker `tag`

### Minimizing the image size

- Using a tiny start image
  - alpine
  - ubuntu minimal
  - debian slim
- Multi Stage builds

### Docker Networking

- `docker network`
  - `ls`
  - `inspect <name>`
  - `create <name>`
  - `connect <name> <container-id>`
    - `--network <name>`

### Orchestrating your containers

- Docker compose
- Kubernetes

### Using a [private repository](https://docs.docker.com/registry/deploying/)

### Alternatives to docker

- [`rkt`](https://coreos.com/rkt/)

### Securing your container

- seccomp

### Tips

- Avoid using the `root` user
- Linting
  - [`hadolint`](https://github.com/hadolint/hadolint)

---

## References

- [10 docker image security best practices](https://snyk.io/blog/10-docker-image-security-best-practices/)
