# Step 1: Use a base image with OpenJDK installed
FROM openjdk:11-jre-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the compiled JAR file from the host machine into the container
COPY target/app.jar /app/app.jar

# Step 4: Command to run the Java app
CMD ["java", "-jar", "app.jar"]
