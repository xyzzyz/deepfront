FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && \
    apt-get -y install \
            software-properties-common

RUN apt-get -y install python-flask

RUN useradd -m deepfront

USER deepfront

WORKDIR /home/deepfront

ADD deepfront.py /home/deepfront/
ADD templates/ /home/deepfront/templates/

CMD python /home/deepfront/deepfront.py

EXPOSE 5000
