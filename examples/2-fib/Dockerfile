ARG FLAVOR=latest
FROM golang:$FLAVOR
# FROM golang
ARG BIN_NAME=fib
WORKDIR /app
COPY main.go .
RUN go build -o $BIN_NAME main.go
ENV BIN_NAME=${BIN_NAME:-fib}
ENV DURATION=1
# CMD [ "/app/$BIN_NAME" ]
CMD ["sh", "-c", "/app/$BIN_NAME"]
