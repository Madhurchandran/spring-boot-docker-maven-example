# Start with a base image containing Java runtime
FROM openjdk:8-jdk

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Add the application's jar to the container
ADD target/spring-boot-docker-maven-example.jar spring-boot-docker-maven-example.jar

# Run the jar file
ENTRYPOINT ["java","-jar","spring-boot-docker-maven-example.jar"]
