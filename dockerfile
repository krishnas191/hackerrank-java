FROM openjdk:17

COPY target/hackerrank-java-1.0-SNAPSHOT.jar /app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]
