# docker-terraform [![Circle CI](https://circleci.com/gh/AlbanMontaigu/docker-terraform.svg?style=shield)](https://circleci.com/gh/AlbanMontaigu/docker-terraform)

## Introduction

Thanks to original project [uzyexe/terraform](https://github.com/uzyexe/dockerfile-terraform).

## What is terraform

Terraform provides a common configuration to launch infrastructure — from physical and virtual servers to email and DNS providers. Once launched, Terraform safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

[http://www.terraform.io/](http://www.terraform.io/)

## Dockerfile

[**Trusted Build**](https://registry.hub.docker.com/u/amontaigu/terraform/)

This Docker image is based on the official [alpine:3.2](https://registry.hub.docker.com/_/alpine/) base image.

## How to use this image

```
docker run --rm amontaigu/terraform [--version] [--help] <command> [<args>]

```

## Using

**Please note: Create by your Terraform configuration files (.tf) is `/data` directory**

### terraform apply

```
docker run --rm -v /data:/data -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host amontaigu/terraform apply [options]
```

### terraform destroy

```
docker run --rm -v /data:/data amontaigu/terraform destroy [options] [DIR]
```

### terraform get

```
docker run --rm -v /data:/data amontaigu/terraform get [options] PATH
```

### terraform graph

```
docker run --rm -v /data:/data amontaigu/terraform graph [options]
```

### terraform init

```
docker run --rm -v /data:/data amontaigu/terraform init [options] SOURCE [PATH]
```

### terraform output

```
docker run --rm -v /data:/data amontaigu/terraform output [options] NAME
```

### terraform plan

```
docker run --rm -v /data:/data -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host amontaigu/terraform plan [options]
```

### terraform push

```
docker run --rm -v /data:/data -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host amontaigu/terraform push [options]
```

### terraform refresh

```
docker run --rm -v /data:/data -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host amontaigu/terraform refresh [options]
```

### terraform remote

```
docker run --rm -v /data:/data -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host amontaigu/terraform remote [options]
```

### terraform show

```
docker run --rm -v /data:/data amontaigu/terraform show terraform.tfstate [options]
```

### terraform taint

```
docker run --rm -v /data:/data -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host amontaigu/terraform taint [options] name
```

### terraform version

```
docker run --rm amontaigu/terraform version
```
