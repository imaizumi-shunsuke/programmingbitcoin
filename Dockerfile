FROM python:3.5
SHELL ["/bin/bash", "-c"]
WORKDIR /app
COPY requirements.txt /app/
RUN apt-get update 
RUN apt-get install -y python3-pip && pip install --upgrade pip
RUN pip install -r requirements.txt