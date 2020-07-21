FROM golang AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
ENV CGO_ENABLED=0
RUN go build -o server .

FROM scratch
WORKDIR /app/bin/
COPY --from=builder /app/server .
ENV PORT=8080
EXPOSE 8080
CMD [ "/app/bin/server" ]
