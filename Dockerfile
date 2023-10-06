# Use the official Python image from the Docker Hub
# I chose python:3.10-slim-buster since it's a newer version, but you can use 3.8 if you prefer
FROM python:3.10-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# Also installing dash directly
RUN pip install --no-cache-dir -r requirements.txt && pip install dash

# I've set the exposed port to 5500, but if you want port 80, replace 5500 with 80
EXPOSE 5500

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
