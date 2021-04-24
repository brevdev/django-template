FROM python:3.10.0a7-slim-buster

WORKDIR /app

RUN apt update && \
    apt install python3-pip python3-venv -y && \
    pip3 install django
