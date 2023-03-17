# Hello World

- Start by creating a `hello.<some-extension>` based on language of choice.

- If in doubt use python: `print("Hello World from Python!")` stored in a hello.py file

- Write a Dockerfile with the instructions similar to [this](https://github.com/AgarwalConsulting/DockerTraining/blob/master/examples/0-hello-world/hello-haskell/Dockerfile), or you choose a different base image.

- Build the image: `docker build -t <image-name> .`

- Run the image: `docker run -it --rm <image-name>`

Make sure the default command is set in the Dockerfile.
