# Create a simple image and push to docker registry

* Register on https://hub.docker.com
* Sign up using `docker login`
* Create a simple "Hello, world!" container based on `alpine` linux
  * This container prints `Hello, World!` when `run`
  * Build using `docker build -f Dockerfile -t <username>/<image-name>:<tag-name> .`
* Push the image to `hub.docker.com` under your username in a `username/image-name` format
  * `docker push <username>/<image-name>:<tag-name>`
* Make sure to run the image in the person next to your computer
  * `docker run <username>/<image-name>`
