FROM openjdk:8-jdk-alpine
VOLUME /temp
EXPOSE 8095
COPY target/*.jar /app.jar
CMD ["java", "-Djava.security.egd=file:/dev/urandom", "-jar", "/app.jar"]
