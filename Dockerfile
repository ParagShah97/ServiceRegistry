FROM openjdk:21

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} serviceregistry.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "/serviceregistry.jar"]

