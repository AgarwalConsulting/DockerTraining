FROM golang:alpine
ARG GO_FILE
WORKDIR /app
COPY ./${GO_FILE}.go /app
RUN go build ${GO_FILE}.go
RUN ls
RUN adduser -D bob
USER bob
CMD ["/app/${GO_FILE}"]
