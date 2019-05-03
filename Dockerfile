FROM python:3.7-alpine
MAINTAINER Fabian Hutzler

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt #--proxy=http://rgb-proxy.avl.com:8080 

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

