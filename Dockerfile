
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
# COPY requirements.txt .

# Install the application dependencies
RUN pip install flask

# Import the necessary modules
# Commented out because they are imported in the app.py file

# from flask import Flask, jsonify, render_template, request
# import requests
# import datetime as dt
# import pandas as pd

# Install the application dependencies
RUN pip install sqlalchemy

# Import the necessary modules
# Commented out because they are imported in the app.py file

# from sqlalchemy.ext.automap import automap_base
# from sqlalchemy.orm import Session
# from sqlalchemy import create_engine, func

# Import the necessary modules
# Importing json module and dump function to create a json file
# Importing json module to read json file

# from json import dump
# import json

# Define the entry point for the container
CMD ["flask", "run", "--host=0.0.0.0"]
