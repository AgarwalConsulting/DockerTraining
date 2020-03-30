# Running a DB within Docker

Let’s see some additional runtime parameters that can be passed in to a container.

## Identify the image from Docker hub

For this next task you can use any db you are familiar with (& have a cli client for in your machine

If you aren't able to choose, pick `postgres`!

- Find the image on Docker Hub – review the instructions
- Run the image locally. Pass in environment variables to allow access to the database and also volume mapping.

## Troubleshooting

If you aren't able to connect to the db on the running container in spite of adding `-p`, replace `localhost` with `docker.for.mac.host.internal` in your connection string.
