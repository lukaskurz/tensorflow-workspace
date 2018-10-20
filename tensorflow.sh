docker run --runtime=nvidia -it -p 8888:8888 tensorflow/tensorflow:latest-gpu  # Start a Jupyter notebook server
#docker run --runtime=nvidia -it -p 8888:8888 -v ~/tensorflow:/home/tensorflow -w /home/tensorflow tensorflow/tensorflow:latest-gpu
