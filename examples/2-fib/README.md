# Build & Runtime variables

## Build flags

Build flags can be provided while building a Docker image.

These can be provided using `--build-arg` flag to `docker build` command.

Eg.

```bash
docker build --build-arg FLAVOR=alpine -t fib .
```

## Runtime environment flags

Runtime flags can be provided while running a container image.

These can be provided using `-e` flag to `docker run` command.

Eg.

```bash
docker run -it --rm -e DURATION=3 fib
```
