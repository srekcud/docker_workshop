# Docker Workshop

## Prerequisite

Before participating to this workshop you will need to install differents packages on your machine.

* docker (>20.0)
* docker-compose (>1.25)
* dive (>0.10) [Repo](https://github.com/wagoodman/dive/releases)

## Intro

What do you know about docker & docker-compose?

**LIVE FAQ**


## Docker

A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

### Docker VS VM
A docker system is ligthier then a virtual machine as it use the host operating system

![](./images/docker-vm.jpeg)

### Advantages of using docker over a VM

* Industry standard
* Portability
* Lightweight
* Security
* lot of existing images

### Keywords

* DockerFile

A Dockerfile is a script that automatically creates containers on the Docker platform. A Dockerfile is basically a text document that contains all the commands a user could call on the command line to assemble an image

* Image

Comparable to a snapshot, it's execute a set of instruction from a dockerfile. An image contains all needed parts to run a containerized application i.e : source code, libs, env var.
* Container

A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another


### Principal keywords used in a dockerfile

* FROM
* RUN
* COPY
* CMD
* ENTRYPOINT

### docker command

**_NOTE: [Cli documentation](https://docs.docker.com/engine/reference/commandline/docker/)_**


```bash
docker build -t name .
# -t = tag
```

```bash
docker images
```

```bash
docker ps
```

```bash
docker run --rm name
# --rm = remove container on exit
```

```bash
docker container stats
```


```bash
docker run -it name /bin/sh
# -i = interactive
# -t = tty
```
### Small exercise

1. output `Hello stellar`
1. output the content of the `output.txt` file
1. output `Laravel is bad only symfony should exist #JeremyWasThere` only use exo2 image ( hint : use -v argument)

## Docker-compose

Docker Compose is a tool that was developed to help define and share multi-container applications.

We are using it for the local development to facilitate the launch of all the service needed to run the platform.

docker-compose file are yaml template and get more or less all the functionnality and keyword of docker engine

mandatory elements of a docker-compose template

```yaml
version: '2.3'
services:
  service_name:
    image: image_name
```


### docker-compose command
**_NOTE: [Cli documentation](https://docs.docker.com/compose/reference/)_**

```bash
docker-compose up
# using this command let you see the logs of the services but block your terminal
```

```bash
docker-compose up -d
# -d = detach to run the docker in background
```

```bash
docker-compose down
```

```bash
docker-compose run --rm php-cli
# run a service in particular on the template
```


### Exercise

1. recreate the docker exercice 3 with a docker-compose template
1. Display the nginx default page on `localhost:9876` in your browser
1. Display the nginx default page on `your.devops.is.the.best` in your browser

## Bibliography

[Official documentation](https://docs.docker.com/)

[Official docker repository](https://hub.docker.com/)

O'Reilly : Docker Up & Running
