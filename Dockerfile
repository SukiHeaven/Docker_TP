FROM Ubuntu::20.04

ADD ./workspace/
WORKDIR /workspace

COPY requirements.txt .

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y pip virtualenv

RUN pip install -r requirements.txt
