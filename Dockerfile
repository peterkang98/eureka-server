FROM eclipse-temurin:21-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

ENV HOSTNAME=localhost
ENV EUREKA_URl=http://localhost:3150/eureka

ENTRYPOINT ["java", "-DEUREKA_INSTANCE_HOSTNAME=${HOSTNAME}","-jar", "app.jar", "-DEUREKA_CLIENT_SERVICEURL_DEFAULTZONE=${EUREKA_URL}"]

EXPOSE 3100