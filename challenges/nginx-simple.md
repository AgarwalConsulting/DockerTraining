# Creating and running an nginx based container

- Create a new Docker image using a Dockerfile that you’ll write.
- Use `nginx:latest` in your FROM statement
- Create a new simple HTML. Any simple content will do.
- In your Dockerfile, copy the file into the container at /usr/share/nginx/html
- Build the image, tag it, push, and run it.
- Check that you see your custom HTML in your browser. Nginx runs on port 80.
