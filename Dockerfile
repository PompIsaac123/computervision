# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install necessary packages for OpenCV
RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0

# Install Python libraries
RUN pip install --no-cache-dir numpy opencv-python-headless tensorflow keras
# Optionally add PyTorch and Dlib
# RUN pip install --no-cache-dir torch torchvision torchaudio dlib

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Command to run on container start
CMD [ "python", "./your-script.py" ]
