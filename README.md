# jupyter-keras

## Info
Extended from [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) which contains :

* Jupyter Notebook 5.2.x
* Conda Python 3.x environment
* pandas, matplotlib, scipy, seaborn, scikit-learn, scikit-image, sympy, cython, patsy, statsmodel, cloudpickle, dill, numba, bokeh, vincent, beautifulsoup, xlrd pre-installed

Check Jupyter Github given above for full reference and usage. Everything is pre-installed for Python 3.x.

Image build is triggered with each update of [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) and install bleeding edge versions of Keras.

For advanced usage and options, read more at [Jupyter Notebook Scientific Python Stack](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook).

I use this image to work with neural networks, so I added the following libraries :

* [Keras](http://keras.io/): a high-level neural networks API, written in Python and capable of running on top of TensorFlow, CNTK, or Theano. It was developed with a focus on enabling fast experimentation.
* [TensorFlow](https://www.tensorflow.org/): open source software library for numerical computation using data flow graphs, the default backend for Keras.
* [HDF5 for Python](http://www.h5py.org/): optional dependency of Keras used to save / load weights for neural networks.

Note : in this setting, TensorFlow will be CPU enabled only.

## Basic Use

```
docker run -d -v /$(pwd)/:/home/jovyan/work \
           -p 8888:8888 gaarv/jupyter-keras start-notebook.sh --NotebookApp.token=''
```
This will allow to have the current working directory path mounted directly into the guest and with no password
