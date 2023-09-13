# Use the official Python image as the base image
FROM python:3.8

ADD /template/index.html 
ADD app.py app.py
EXPOSE 8000
ENTRYPOINT [“python3”, “server.py”]

# Install the application dependencies
RUN pip install -r requirements.txt

# Define the entry point for the container
CMD ["flask", "run", "--host=0.0.0.0"]
