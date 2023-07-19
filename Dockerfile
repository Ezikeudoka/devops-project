# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17-slim AS builder

# Set the working directory
WORKDIR /devops-project

# Copy the application files
COPY pom.xml .

# Build the application (replace with your build command)
RUN mvn package

# Stage 2: Create the production container
#FROM tomcat:9.0.52-jdk17-openjdk-slim

# Set the working directory
#WORKDIR /app

# Copy the built artifacts from the previous stage
#COPY --from=builder /app/<path_to_built_artifacts> .

# Specify any additional dependencies or configurations
#RUN <additional_commands>

# Expose any necessary ports
#EXPOSE <port_number>

# Define the command to start the application

