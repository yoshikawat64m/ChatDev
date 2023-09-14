FROM python:3.9-buster

RUN apt-get update

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING utf-8

RUN mkdir /workspace
WORKDIR /workspace

ADD . /workspace/

RUN pip3 install -r requirements.txt

EXPOSE 8000