FROM Ubuntu::20.04
RUN sudo apt-get update
ADD ./workspace/
WORKDIR /workspace
