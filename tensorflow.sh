docker run --runtime=nvidia -it -p 8888:8888 tensorflow/tensorflow:latest-gpu-py3 # Start a Jupyter notebook server
#docker run --runtime=nvidia -it -p 8888:8888 -v ~/.:/home/tensorflow -w /home/tensorflow tensorflow/tensorflow:latest-gpu-py3
