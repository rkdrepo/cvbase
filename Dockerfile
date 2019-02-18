FROM continuumio/anaconda3

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/* && \
    /opt/conda/bin/conda install opencv -y

RUN apt-get update && \
    apt-get install -y build-essential && \
    pip install cmake && \
    pip install  request  hug
