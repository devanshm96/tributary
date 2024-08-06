FROM python:3.11
#Docker containers run their own operating systems with an entirely different file system from your host machine.
#If you would like to access a file on your host from your container, you must explicitly COPY it over.
COPY ./requirements.txt .
#RUN keyword indicates that the command should execute while the image is being built,
#whereas a CMD keyword indicates that the command should wait until the container is initialized to execute.
#Dockerfiles often contain many RUN lines, which prepare an image by installing dependencies and the like,
#but only a single CMD line at the very end, which starts your application.
RUN pip install -r requirements.txt
COPY ./entrypoint.py .
#starts up your Flask application using Gunicorn, which basically acts as the glue between your Python code and
#the container's underlying networking infrastructure.
CMD exec gunicorn --bind 0.0.0.0:8000 entrypoint:app
