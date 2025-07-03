# Use a slim image of Python 3.13 as the base image
FROM python:3.13-alpine
# Set the working directory to /app
WORKDIR /app

# Copy the contents of the src folder into the container
COPY src /app/src

# Change directory to /app/src
WORKDIR /app/src

# Install Git and Bash using apk package manager
RUN apk update && apk add --no-cache git bash
RUN apk add gcc python3-dev musl-dev linux-headers

# Set Git user name and user email
RUN git config --global user.name "lrochette"
RUN git config --global user.email "laurent.rochette@codefresh.io"

# Install requirements from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pyupio

# Add any additional commands or configurations here, if needed

# Start your application or perform other actions as desired
