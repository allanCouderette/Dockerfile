FROM ubuntu:latest

MAINTAINER Allan Couderette version: 0.1

RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev

COPY ./datasets /datasets
COPY ./notebooks /notebooks
COPY requirements.txt .
RUN pip3 install -r requirements.txt 

RUN pip3 -q install pip --upgrade

WORKDIR /notebooks

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]