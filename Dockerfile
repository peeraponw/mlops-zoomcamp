FROM python:3.10
RUN apt-get update \
    && apt-get install -y git 
RUN git clone https://github.com/peeraponw/mlops-zoomcamp.git
WORKDIR /mlops-zoomcamp

RUN pip install --upgrade pip \
    && pip install -r requirements.txt --no-cache\
    && mkdir data \
    && mkdir models \
    && wget https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2023-01.parquet \
    && wget https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2023-02.parquet \
    && mv green_tripdata_2023-01.parquet data/green_tripdata_2023-01.parquet \
    && mv green_tripdata_2023-02.parquet data/green_tripdata_2023-02.parquet


EXPOSE 8889
ENTRYPOINT /bin/bash
