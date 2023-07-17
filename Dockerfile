# We are using the Python image as the base image
FROM python:3.8-slim-buster

# Setting the working directory in the docker container to /app
WORKDIR /app

# Adding the current directory files (i.e., your Django project files) to the docker container
ADD . /app

# Install the project dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 8000 (The port on which Django runs) in the docker container
EXPOSE 8000

# Start the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
