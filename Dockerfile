FROM ubuntu:20.04

EXPOSE 8888

WORKDIR ./workspace

COPY requirements.txt .

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y pip
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y pip virtualenv
RUN apt-get install -y python3-venv

RUN pip3 install notebook
RUN pip3 install -r requirements.txt

CMD ["sh","-c","jupyter notebook --no-browser --allow-root --ip=0.0.0.0"]
