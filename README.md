# docker-ubuntu-base
[![CircleCI](https://circleci.com/gh/drecom/docker-ubuntu-base/tree/master.svg?style=svg)](https://circleci.com/gh/drecom/docker-ubuntu-base/tree/master)

A Ubuntu docker container

It's on [docker-hub](https://hub.docker.com/r/drecom/ubuntu-base/) and [github](https://github.com/drecom/docker-ubuntu-base/)

## tags and links
* `latest` [(master/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/master/Dockerfile)
* `16.04` [(16.04/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/16.04/Dockerfile)
* `15.10` [(15.10/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/15.10/Dockerfile)
* `15.04` [(15.04/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/15.04/Dockerfile)
* `14.04.4` [(14.04.4/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/14.04.4/Dockerfile)
* `14.04.3` [(14.04.3/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/14.04.3/Dockerfile)
* `14.04.1` [(14.04.1/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/14.04.1/Dockerfile)
* `14.04` [(14.04/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/14.04/Dockerfile)
* `13.10` [(13.10/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/13.10/Dockerfile)
* `13.04` [(13.04/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/13.04/Dockerfile)
* `12.10` [(12.10/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/12.10/Dockerfile)
* `12.04.5` [(12.04.5/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/12.04.5/Dockerfile)
* `12.04` [(12.04/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/12.04/Dockerfile)
* `10.04` [(10.04/Dockerfile)](https://github.com/drecom/docker-ubuntu-base/blob/10.04/Dockerfile)

## how to build

```sh
docker build --rm -t ubuntu-base .
```

## running

```sh
docker run -it --rm drecom/ubuntu-base /bin/bash
```
