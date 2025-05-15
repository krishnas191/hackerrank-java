FROM maven:3.5-jdk-8-alpine as build

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

FROM openjdk:8-jre-alpine

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
