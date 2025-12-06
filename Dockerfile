# Use the same base image as before
FROM circleci/openjdk:latest

# Set working directory
WORKDIR /app

# Copy your JAR file
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar
# Expose the port your Spring Boot app runs on
EXPOSE 8081

# Set the entry point to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
