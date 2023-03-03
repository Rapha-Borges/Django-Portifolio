# syntax=docker/dockerfile:1
FROM python:3

# set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1

# create working directory
WORKDIR /code

# copy only the requirements file 
COPY requirements.txt .

# install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# copy everything else to working directory
COPY . .
