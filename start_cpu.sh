docker run \
    -it \
    -p 8888:8888 \
    -v ./jupyter_notebook_config.py:/root/.jupyter/jupyter_notebook_config.py \
    -v ./src:/notebooks \
    --name tensorflow-workspace-cpu \
    tensorflow/tensorflow:latest-py3
google-chrome http://localhost:8888/?token=c41b83686a46bc94ae03adddbae8e5270d6a1a6ce3796746
docker rm --force tensorflow-workspace-cpu

