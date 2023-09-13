
# Use the official Python image as the base image
FROM python:3.8

# Add the files to the container
ADD template/index.html /template/index.html
ADD app.py app.py

# Expose the port
# EXPOSE 8000/

# Set the working directory
WORKDIR /

# Install the application dependencies
# COPY requirements.txt .

# Install the application dependencies
RUN pip install flask

from flask import Flask, jsonify, render_template, request
import requests
import datetime as dt
import pandas as pd


RUN pip install sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

from json import dump
import json

# Define the entry point for the container
CMD ["flask", "run", "--host=0.0.0.0"]
