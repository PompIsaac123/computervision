# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install necessary packages for OpenCV GUI support and OpenGL
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libglib2.0-0 \
    libgtk2.0-dev \
    pkg-config \
    # Added for OpenGL support
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Install Python libraries, ensuring opencv-python (not headless) is installed
RUN pip install --no-cache-dir numpy opencv-python tensorflow keras

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Command to run on container start
CMD [ "python", "./your-script.py" ]
