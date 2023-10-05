# python base image
FROM python:3.9-slim

RUN mkdir -p /app

# Set the container's working directory
WORKDIR /app

# Copy the Python web server script to the container
COPY app.py .

# Install the Python web framework Flask
RUN pip install Flask

# Expose the port that the application will listen on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]