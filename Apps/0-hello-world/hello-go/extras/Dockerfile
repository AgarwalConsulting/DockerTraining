FROM golang:alpine
WORKDIR /app
COPY ./hello-looped.go /app
RUN go build hello-looped.go
RUN ls
ENTRYPOINT ["/app/hello-looped"]
