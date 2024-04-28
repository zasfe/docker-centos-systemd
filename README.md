Docker CentOS Systemd
=====================

This Dockerfile can build containers capable to use systemd.

[![build status badge](https://img.shields.io/github/actions/workflow/status/zasfe/docker-centos-systemd/build-push-action.yml?branch=7-systemd-vagrant&label=GitHub%20CI)](https://github.com/zasfe/docker-centos-systemd/actions?query=workflow%3A%22GitHub+CI%22+branch%3A7-systemd-vagrant) 
![Docker Automated build](https://img.shields.io/docker/automated/zasfe/centos?label=Docker%20Automated%20build)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/zasfe/centos?label=Docker%20Cloud%20Automated%20build)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/zasfe/centos?label=Docker%20Cloud%20Build%20Status)

![Docker Stars](https://img.shields.io/docker/stars/zasfe/centos.svg) 
![Docker Pulls](https://img.shields.io/docker/pulls/zasfe/centos.svg) 
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/zasfe/centos/7?label=Docker%20Image%20Size)

* original repogitory: https://github.com/robertdebock/docker-centos-systemd/

Branches
--------

This repository has multiple branches that relate to CentOS versions.

|Branch |CentOS Version|Docker image tag|
|-------|--------------|----------------|
|master |latest (8)    |8               |
|7-systemd-vagrant      |7             |7-systemd-vagrant               |
|7      |7             |7               |

Pull strategy
-------------

The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  robertdebock/centos
```
