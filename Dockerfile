FROM jupyter/scipy-notebook

MAINTAINER Gaarv <@Gaarv1911>

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh

USER jovyan

# Switch into Python2, installs bleeding edge Theano and Keras
# HDF5 package to save / load weights
RUN source activate python2 \
 && conda install -y tensorflow \
 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git \
 && conda install --no-deps -y h5py

# Python3, Installs bleeding edge Theano and Keras 
# HDF5 package to save / load weights
RUN conda install -y tensorflow \
 && pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git \
 && conda install --no-deps -y h5py