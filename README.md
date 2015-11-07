# neural-python

Extended from [Jupyter Datascience Notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook) which contains :

* Jupyter Notebook 4.0.x
* Conda Python 3.x and Python 2.7.x environments
* pandas, matplotlib, scipy, seaborn, scikit-learn, ...

And much more, check the Jupyter Github for full reference and usage. Everything is pre-installed on both Python 3.x and 2.7.x environments.


This image adds specifics libraries used in neural networks :

* [Keras](http://keras.io/): a Theano-based Deep Learning library which allows for easy and fast prototyping. The main reason for this image.
* [Theano](http://deeplearning.net/software/theano/): Theano is well known library for its power when used conjointly with NumPy. It makes also makes GPU usage easy.
* [HDF5 for Python](http://www.h5py.org/): optional dependency of Keras used to save / load weights for neural networks.