FROM jazzdd/alpine-flask:python3

RUN apk add --no-cache \
        gcc \
        python3-dev \
        musl-dev \
        libffi-dev \
        openssl \
        openssl-dev

ADD . /app/

RUN /usr/bin/python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt --ignore-installed six && \
    apk del gcc git python3-dev musl-dev libffi-dev openssl-dev