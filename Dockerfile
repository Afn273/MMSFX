# Use a base image with a Java Runtime Environment (JRE)
FROM openjdk:17

# Set the working directory
WORKDIR /app

# Copy Java source files from the 'src' directory to a specific directory in the container
COPY ./src/*.java ./src/

# Compile the Java source files to create a JAR file
RUN javac -d ./bin ./src/*.java

# Set the entry point to run your JavaFX application
CMD ["java", "-cp", "./bin", "main"]
