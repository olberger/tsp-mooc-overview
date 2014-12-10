TSP MOOC Overview
=================

[![Build Status](https://travis-ci.org/pfe-asr-2014/tsp-mooc-overview.svg?branch=master)](https://travis-ci.org/pfe-asr-2014/tsp-mooc-overview)

A service for the TSP MOOC platform right on your computer that let you acces, manage and overview all TMSP docker ready services.

## Run container

```sh
# With boot2docker
docker run -it --env HOST_IP=$(ip route|awk '/192/ { print $9 }') debian bash

# Without b2d
docker run -it debian bash
```

## Acknowledgement

`config_test.yml` containers are based on [rockymeza/django-docker-example](https://github.com/rockymeza/django-docker-example).
