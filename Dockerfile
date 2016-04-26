# ubuntu-base
#
# VERSION               0.0.1

FROM ubuntu:14.04.3

MAINTAINER Drecom Technical Development Department <pr_itn@drecom.co.jp>

RUN apt-get update \
&&  apt-get upgrade -y --force-yes \
&&  apt-get install -y --force-yes \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    language-pack-ja \
    wget \
    curl \
    git \
    build-essential \
    vim \
    dtach \
    imagemagick \
    libmagick++-dev \
    libqtwebkit-dev \
    libffi-dev \
    mysql-client \
    libmysqlclient-dev \
    libxslt1-dev \
    redis-tools \
    xvfb \
    python \
    nodejs \
    npm \
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# pip install
RUN wget https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py

# s3cmd install
RUN pip install s3cmd

# phantomjs install
ENV PHANTOMJS_VERSION 2.1.1
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
&&  tar xf phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
&&  mv     phantomjs-${PHANTOMJS_VERSION}-linux-x86_64/bin/phantomjs /usr/bin/phantomjs \
&&  rm -rf phantomjs-${PHANTOMJS_VERSION}-linux-x86_64 \
&&  rm     phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2

# defaultのlocaleをja_JP.UTF-8にする
ENV LANG=ja_JP.UTF-8
RUN update-locale LANG=ja_JP.UTF-8

# Timezone変更
RUN echo "Asia/Tokyo" > /etc/timezone \
&&  dpkg-reconfigure -f noninteractive tzdata

