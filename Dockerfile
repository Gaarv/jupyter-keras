FROM jupyter/datascience-notebook
MAINTAINER Gaarv

RUN pip install --upgrade git+git://github.com/Theano/Theano.git
RUN pip install --upgrade git+git://github.com/fchollet/keras.git
RUN mkdir /notebooks

WORKDIR /notebooks
