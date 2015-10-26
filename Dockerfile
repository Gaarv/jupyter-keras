FROM jupyter/datascience-notebook

MAINTAINER Gaarv

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
  && rm -rf /var/lib/apt/lists/*

ENV PATH $CONDA_DIR/bin:$PATH

RUN pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git
RUN pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git
RUN conda install -y h5py

RUN mkdir /notebooks
WORKDIR /notebooks
