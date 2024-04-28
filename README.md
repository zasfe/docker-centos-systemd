Docker CentOS Systemd
=====================

This Dockerfile can build containers capable to use systemd.

[![build status badge](https://img.shields.io/github/actions/workflow/status/zasfe/docker-centos-systemd/build-push-action.yml?branch=7&label=GitHub%20CI)](https://github.com/zasfe/docker-centos-systemd/actions?query=workflow%3A%22GitHub+CI%22+branch%3A7)


* original repogitory: https://github.com/robertdebock/docker-centos-systemd/

Branches
--------

This repository has multiple branches that relate to CentOS versions.

|Branch |CentOS Version|Docker image tag|
|-------|--------------|----------------|
|master |latest (8)    |8               |
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
