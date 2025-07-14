#build a Docker image for a Java application
#base image contains java runtime environment
FROM openjdk:17-jdk-slim
# Add application's JAR file to the image
COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar
# Set the command to run the JAR file
ENTRYPOINT ["java", "-jar", "accounts-0.0.1-SNAPSHOT.jar"]