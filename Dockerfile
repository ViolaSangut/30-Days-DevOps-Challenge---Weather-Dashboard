# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install AWS CLI for interacting with S3
RUN apt-get update && apt-get install -y awscli && apt-get clean

# Copy environment variables file
COPY .env .

# Copy the entire project directory to the container
COPY src/ ./src
COPY aws/ ./aws
COPY data/ ./data

# Define the command to run the application
CMD ["python", "src/weather_dashboard.py"]
