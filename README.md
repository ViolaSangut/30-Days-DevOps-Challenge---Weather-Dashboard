# 30-Days-DevOps-Challenge
# Weather-Dashboard

DAY 1: This project focuses on creating a python app that collects weather data using the OpenWeather API and stores it in a AWS S3.

# Requirements
1. python
2. AWS S3
3. OpenWeather API

# Setting up the project
1. Clone the repository using the following command.
  # **git clone https://github.com/ViolaSangut/30-Days-DevOps-Challenge---Weather-Dashboard.git**
   
#2. Install the requirements using the following command.
  # **pip install -r requirements.txt**
   
# 3. Run the command  **AWS Configure**. You will be prompted to enter the your AWS access key , secret key and region.
   
4. Acquire the API keys for the OpenWeather API and AWS S3 and store them in the .env file as shown below.
    **WEATHER_APIKEY = your_weather-api
      WEATHER_BUCKET_NAME = AWS_bucket Name**
   
5. Run the code using the command
   python3 src/weather_dashboard.py
  
6. Steps to Build and Run the Docker Container
    **Build the Docker Image: docker build -t weather-dashboard-app .**
    **Run the Docker Container: docker run --env-file .env weather-dashboard-app**

   
