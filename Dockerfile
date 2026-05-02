FROM openjdk:27-ea-17-jdk-slim-trixie
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY target/eureka-service-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "app.jar"]
