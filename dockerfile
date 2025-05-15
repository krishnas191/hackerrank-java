FROM maven:3.9.9-eclipse-temurin-17-alpine

WORKDIR /app

COPY . .

RUN mvn clean install

ENTRYPOINT ["mvn", "spring-boot:run"]
