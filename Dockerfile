FROM ubuntu:23.10 
RUN apt-get update && apt-get install -y python3 python3-pip git wget 
RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED
RUN git clone https://github.com/peeraponw/mlops-zoomcamp.git
WORKDIR /mlops-zoomcamp

RUN pip3 install -r requirements.txt
EXPOSE 8889

RUN wget https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2023-01.parquet && mkdir data &&  mv green_tripdata_2023-01.parquet data/green_tripdata_2023-01.parquet
RUN wget https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2023-02.parquet && mv green_tripdata_2023-02.parquet data/green_tripdata_2023-02.parquet
ENTRYPOINT /bin/bash
