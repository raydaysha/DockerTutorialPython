# Build (or rebuild) using
# docker build -t="dockertutorial/polymer-python:latest" .

# Pull base image.
FROM ubuntu:latest

# maintainer details
MAINTAINER Jeff Davis "raydaysha@gmail.com"

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# attach volumes
VOLUME /volume/git

# create working directory
RUN mkdir -p /local/git 
WORKDIR /local/git/

# Install the test webapp
RUN git clone https://github.com/raydaysha/DockerTutorialPython.git
WORKDIR /local/git/DockerTutorialPython

#RUN chmod +x /local/git/docker-python/run.sh
# run startup script

#CMD ["run.sh"]

# Define default command.
CMD ["bash"]

