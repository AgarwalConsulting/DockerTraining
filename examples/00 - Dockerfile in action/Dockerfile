FROM ubuntu
RUN useradd non-root
USER non-root
WORKDIR /app
# RUN echo "Hello, from Dockerfile!" > /hello.txt
COPY hello.txt .
# CMD [ "top" ]
ENTRYPOINT [ "top" ]
