FROM jupyter/datascience-notebook

MAINTAINER Gaarv <@Gaarv1911>

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
  && rm -rf /var/lib/apt/lists/*

# Env variable for conda
ENV PATH $CONDA_DIR/bin:$PATH

# HDF5 package to save / load weights
RUN conda install -y h5py

# Installs bleeding edge Theano
RUN pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git

# Installs bleeding edge Keras
RUN pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git
