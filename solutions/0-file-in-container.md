# Steps

- Create a container, using:

```bash
docker run -it ubuntu bash
```

- Create a file, with some content, within the container:

```bash
echo "hello, world" > /hello.txt
echo date >> /hello.txt
```

- Exit out of the container, and run it again.
