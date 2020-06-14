FROM ubuntu:18.04

WORKDIR /flask_app

ADD . /flask_app

RUN apt-get update && \
    apt-get install -y make && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    apt-get clean

RUN make install

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

CMD ["make","run"]

EXPOSE 5000
