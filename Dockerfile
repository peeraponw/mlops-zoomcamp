FROM ubuntu:23.10
RUN apt-get update
RUN apt-get install -y python3 python3-pip git
RUN git clone https://github.com/peeraponw/mlops-zoomcamp.git
WORKDIR /mlops-zoomcamp

RUN pip3 install -r requirements.txt

EXPOSE 8889
CMD "bin/bash"
