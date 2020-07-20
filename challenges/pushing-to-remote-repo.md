# Pushing your first image

We are going to build on top of the `hello-world` exercise.

## Steps

* Create an account on https://hub.docker.com or use existing account

* Login to hub.docker.com from cli:

```bash
docker login
```

* Re-tag that image you just created with your username...

```bash
docker tag <image-name>:<tag-name> <username-or-org-name>/<image-name>:<tag-name>
```

* Push the image to docker hub

```bash
docker push <username-or-org-name>/<image-name>:<tag-name>
```

* Ask another participant to run your image.

## Questions

* What happens when you change the message, rebuild the image and push again?
