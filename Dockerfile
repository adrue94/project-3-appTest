
# Use the official Python image as the base image
FROM python:3.8

# Add the files to the container
ADD template/index.html /template/index.html
ADD app.py app.py

# Expose the port
EXPOSE 8000

# Set the working directory
WORKDIR /

# Install the application dependencies
COPY requirements.txt .

# Install the application dependencies
RUN pip install -r requirements.txt

# Define the entry point for the container
CMD ["flask", "run", "--host=0.0.0.0"]
