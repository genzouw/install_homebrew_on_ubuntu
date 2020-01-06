# linuxbrew setup script

## Description

This repository have linuxbrew setup script ( `setup.sh` ) and test environment ( `Dockerfile` / `docker-compose.yml` )

I hope that you can refer to it when setting up **LinuxBrew** in Linux environment (Ubuntu).

## Demo

Non root use is name `brew` and password `brew` .

The follow command launch docker environment.

`brew` user will be logged in.

## Requirements

* Docker
* Docker Compose

## Usage

**Launch**

```bash
$ docker-compose run ubuntu
```

**Execute setup script**

The `sudo` ask you `brew` user's password.
It is `brew`.

```bash
$ /workdir/setup.sh
```


## Relase Note

| date       | version | note           |
| ---        | ---     | ---            |
| 2020-01-06 | 0.1     | first release. |


## License

This software is released under the MIT License, see LICENSE.

## Author Information

[genzouw](https://genzouw.com)

* Twitter   : @genzouw ( https://twitter.com/genzouw )
* Facebook  : genzouw ( https://www.facebook.com/genzouw )
* LinkedIn  : genzouw ( https://www.linkedin.com/in/genzouw/ )
* Gmail     : genzouw@gmail.com
