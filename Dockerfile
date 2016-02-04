# ubuntu-base
#
# VERSION               0.0.1

FROM      ubuntu:latest

MAINTAINER Gen Takahashi <gen.takahashi@drecom.co.jp>

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
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# defaultのlocaleをja_JP.UTF-8にする
ENV LANG=ja_JP.UTF-8
RUN update-locale LANG=ja_JP.UTF-8

# Timezone変更
RUN echo "Asia/Tokyo" > /etc/timezone \
&&  dpkg-reconfigure -f noninteractive tzdata

