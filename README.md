# tributary
Ford job simulation task from Forage.com  
I have configured and ran Flask server and Redis instance in a Docker container and stiched them using Docker Compose.

Backend infrastructure for Ford's sensor streaming system. This codebase contains a Flask server which records data to a Redis database, and exposes two endpoints. The /record endpoint is periodically called by embedded sensors within a vehicle to post data to the database. The data is then retrieved by a user facing mobile application using the /collect endpoint.

Dependencies Defined:
1. gunicorn==21.2.0:
"gunicorn" is a Python web server that can run web applications written in Flask, Django, and other frameworks.
2. Flask==3.0.0:
"Flask" is a lightweight web framework for building web applications in Python.
3. loguru==0.7.2:
"loguru" is a Python logging library that simplifies logging in your application.
4. requests==2.31.0:
"requests" is a Python library for making HTTP requests to web services or APIs.
5. redis==5.0.1:
"redis" is a Python client library for interacting with Redis, which is an in-memory data store.
