FROM eclipse-temurin:21-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

ENV HOSTNAME=localhost

ENTRYPOINT ["java", "-Deureka.instance.hostname=${HOSTNAME}", "-jar", "app.jar"]

EXPOSE 3150