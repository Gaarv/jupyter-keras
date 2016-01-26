FROM jupyter/datascience-notebook

MAINTAINER Gaarv <@Gaarv1911>

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

USER jovyan

# Env variable for conda
ENV PATH=/opt/conda/bin:$PATH

# Switch into Python2, installs bleeding edge Theano and Keras
# HDF5 package to save / load weights
RUN source activate python2 \
 && pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git \
 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git \
 && conda install -y h5py

# Python3, Installs bleeding edge Theano and Keras 
# HDF5 package to save / load weights
RUN pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git \
 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git \
 && conda install -y h5py