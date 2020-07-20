# Hello World

## Creating your first image

### Steps

* Build the image

```bash
  docker build -t <image-name>:<tag-name> .
```

* Run the image

```bash
  docker run <image-name>:<tag-name>
```

## Pushing your first image

### Steps

* Create an account on https://hub.docker.com or use existing account

* Login to hub.docker.com from cli:

```bash
docker login
```

* Re-tag that image you just created with your username...

```bash
docker tag <image-name>:<tag-name> <username/org-name>/<image-name>:<tag-name>
```

* Push the image to docker hub

```bash
docker push <username/org-name>/<image-name>:<tag-name>
```

* Ask another participant to run your image.
