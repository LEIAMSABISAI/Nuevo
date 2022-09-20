FROM ubuntu:focal
LABEL version="0.1"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install python3-tk git python3-pip

RUN pip3 install jupyter

RUN pip3 install numpy \
pandas \
matplotlib \
sklearn \
statsmodels \
scipy \
seaborn
