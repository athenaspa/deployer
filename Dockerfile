FROM php:7-alpine

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

RUN apk add --update \
    zip \
    python \
    python-dev \
    py-pip \
    build-base \
  && rm -rf /var/cache/apk/*

RUN pip install --upgrade pip

RUN pip install boto3==1.3.0
