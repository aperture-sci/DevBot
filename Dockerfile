# Use a slim image of Python 3.11 as the base image
FROM python:3.11-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the src folder into the container
COPY src /app/src

# Change directory to /app/src
WORKDIR /app/src

# Install Git and Bash using apk package manager
RUN apk update && apk add --no-cache git bash

# Install requirements from requirements.txt
RUN apt-get update && apt-get install -y git
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pyupio

# Add any additional commands or configurations here, if needed

# Start your application or perform other actions as desired