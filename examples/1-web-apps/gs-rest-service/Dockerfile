FROM maven:latest AS build
WORKDIR /app
# COPY ./settings.xml ~/.m2/
COPY ./pom.xml .
RUN mvn dependency:go-offline -B
COPY . .
RUN mvn package
# ENTRYPOINT [ "java", "-jar", "target/gs-rest-service-0.1.0.jar" ]

FROM openjdk:8-jre-alpine
RUN adduser -D non-root
USER non-root
WORKDIR /app
COPY --from=build /app/target/gs-rest-service-0.1.0.jar .
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "/app/gs-rest-service-0.1.0.jar" ]
