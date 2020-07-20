FROM golang
ARG BINARY_NAME=fib
WORKDIR /app
COPY main.go .
ENV DURATION 1
RUN go build -o $BINARY_NAME .
# CMD /app/$BINARY_NAME
# CMD [ "/app/fib", "-dur", ${DURATION} ]
CMD [ "/app/fib" ]
