# Use an official Python runtime as the base image with Python 3.11.3
FROM python:3.11.3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY "./Homework 4/requirements.txt" .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY "./Homework 4" /app

# Create user and set ownership and permissions as required
RUN adduser --no-create-home myuser && chown -R myuser /app
USER myuser

# Expose port 8000
EXPOSE 8000

# Run the Python script
CMD ["python", "server.py"]