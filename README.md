# jupyter-keras

## Info
Extended from [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) which contains :

* Jupyter Notebook 4.1.x
* Conda Python 3.x and Python 2.7.x environments
* pandas, matplotlib, scipy, seaborn, scikit-learn, scikit-image, sympy, ...

And much more, check the Jupyter Github for full reference and usage. Everything is pre-installed on both Python 3.x and 2.7.x environments.

Image build is triggered with each update of [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) and install bleeding edge versions of Keras and Theano at that time. Image size is 4Gb.

For advanced usage and options, read more at [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook).


I use this image to work with neural networks, so I added the specific libraries :

* [Keras](http://keras.io/):  a minimalist, highly modular neural networks library, written in Python and capable of running on top of either TensorFlow or Theano. It was developed with a focus on enabling fast experimentation.
* [Theano](http://deeplearning.net/software/theano/): used as backend for Keras.
* [HDF5 for Python](http://www.h5py.org/): optional dependency of Keras used to save / load weights for neural networks.


## Basic Use

```
docker run -d -v /<your notebook path>/:/home/jovyan/work -p 8888:8888 gaarv/jupyter-keras
```
This will allow to have your notebook path mounted directly into the guest

When using a terminal into jupyter, you can switch to Python2 with
```
source activate python2
```
and back to Python3 with
```
source deactivate
```
