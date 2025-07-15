# Use an official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy your app code into the container
COPY . .

# Run the app
CMD ["python", "app.py"]
