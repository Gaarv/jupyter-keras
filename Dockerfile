FROM jupyter/datascience-notebook

MAINTAINER Gaarv

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git && apt-get clean

RUN pip install --upgrade git+git://github.com/Theano/Theano.git
RUN pip install --upgrade git+git://github.com/fchollet/keras.git

RUN mkdir /notebooks
WORKDIR /notebooks
