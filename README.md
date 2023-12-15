# sdk-jupyter-environment

Using the Matrix Requirements SDK in a Jupyter notebook environment with IJavascript-async kernel.


# Building a Jupyter Image with a Javascript kernel

In the `./image` directory, run `./create.sh` to build a Docker image configured
with:

* A minimal Jupyter notebook
* The IJavascript (top level async branch) kernel

# Setup and run

Run `npm install` in the `./work` directory in order to make sure the
Matrix Requirements SDK is installed for use in your Jupyter Notebooks.

Copy the file `credentials.json.TEMPLATE` to `credentials.json` and insert
your own Matrix Instance servers and tokens. This way you can load
the information into your Jupyter Notebook without saving tokens
in the notebooks.

To run the notebook, run `./start.sh` from this directory and open your
browser with the link provided on the console. Be sure to save
your notebooks in the `./work` subdirectory. If they are saved anywhere
else, they won't be persisted when the Jupyter server is stopped.

They should also be in the `./work` directory because that is the only
place that the Javascript kernel (actually running NodeJS) will find the
Matrix Requirements SDK package.

You can load the SDK from a notebook saved in the `./work` directory with the
following Javascript code:

```
const sdk = require('matrix-requirements-sdk/server');
```

The `./work/HelloMatrix.ipynb` Notebook is a good start. Load this and run
the first cell, changing the name of the key in the credentials
file from clouds5 to reference your own credentials key.

# Reference

Information used to create this Docker image and repository...

* https://github.com/jupyter/docker-stacks/blob/main/docs/using/running.md
* https://jupyter-docker-stacks.readthedocs.io/en/latest/using/recipes.html#using-sudo-within-a-container
* https://hub.docker.com/r/jupyter/minimal-notebook
* https://github.com/n-riesco/ijavascript
