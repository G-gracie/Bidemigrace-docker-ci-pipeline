# Use official Python base image
FROM python:3.11-slim

#Set working directory
WORKDIR /greet_user

#Copy all file into contianer
COPY . .

#Install pytest for testing
RUN pip install pytest

#Default command to run the greet_user
CMD ["python","greet_user.py"]
