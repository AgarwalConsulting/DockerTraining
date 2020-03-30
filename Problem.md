# Problem

I have a machine with the following specs:

```
  64 CPU cores
  128 GB RAM
  1 TB SSD
```

I have built an application in a [microservice architecture](https://microservices.io/). With the following specs:

```
  # Service A

  Node.js process
  Postgres 10
```

```
  # Service B

  Java 1.2 process
  Postgres 9
```

```
  # Service C - user facing

  Java 9 process
  Postgres 10
```

How do I run all of these services on my machine?
