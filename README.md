# tensorflow-workspace

My personal workspace setup for tensorflow with GPU support

# Get started

## Prerequisites

* [Install docker](https://docs.docker.com/install/)
* [Install Nvidia docker runtime](https://github.com/NVIDIA/nvidia-docker)
* Chrome or some other browser

You can install these prerequesites using the guides in the mentioned sites or using my own install script.

```bash install.sh```

I would recommend to use guides on the sites mentioned, because they are always up-to-date and are faster in fixing bugs and issues with their scripts.

## Start

To start the application you simply need to start the `start.sh` script.

```bash start.sh```

If you don't use `google-chrome` then switch the browser in the script with a browser of your choosing. Only important thing is to open the link.

## Configuration

If you don't want a fixed token, then delete the last line from `jupyter_notebook_config.py`. You can either set a password using environment variables in the `docker-compose.yml` file like this:

```
version: '2.3'

services: 
  tensorflow:
    image: tensorflow/tensorflow:latest-gpu-py3
    runtime: nvidia
    ports:
      - 8888:8888
    volumes: 
      - ./jupyter_notebook_config.py:/root/.jupyter/jupyter_notebook_config.py
      - ./src:/notebooks
    environment: 
      - PASSWORD='1234NOTSECURE'
    # Following two commands equal the -it in docker run -it
    stdin_open: true  # -i
    tty: true # -t
```

You can also set a password in the `jupyter_notebook_config.py` config by adding this as last line:

```c.NotebookApp.password = 'correct horse battery staple'```

You will have to remove the token from the link. Just open `http://localhost:8888` and enter the password.

## Development

All the files in the `src` folder will be visible to Jupyter and notebooks created with Jupyter will be in this folder.