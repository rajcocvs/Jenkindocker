# Step 1: Use a base image with OpenJDK installed
FROM openjdk:11-jre-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the compiled JAR file from the host machine into the container
COPY target/app-v1.jar /app/app-v1.jar

EXPOSE 9090

# Step 4: Command to run the Java app
CMD ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "app-v1.jar", "--server.port=9090", "--server.address=0.0.0.0"]

