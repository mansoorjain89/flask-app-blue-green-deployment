FROM ubuntu:18.04

WORKDIR /flask_app

COPY . /flask_app

RUN apt-get update && \
    apt-get install -y --no-install-recommends make=4.1-9.1ubuntu1 && \
    apt-get install -y --no-install-recommends python3=3.6.7-1~18.04 && \
    apt-get install -y --no-install-recommends python3-pip=9.0.1-2.3~ubuntu1.18.04.1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN make install

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

CMD ["make","run"]

EXPOSE 5000
