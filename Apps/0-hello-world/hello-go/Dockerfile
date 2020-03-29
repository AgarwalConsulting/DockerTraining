FROM golang:alpine
WORKDIR /app
COPY ./hello.go /app
RUN go build hello.go
RUN ls
ENTRYPOINT ["/app/hello"]
