
# Windows appliance scripts for Hashicorp Packer

### Introduction

This repository contains configuration files that can be used to create Windows boxes with preconfigured applications for Vagrant using Packer ([Website](http://www.packer.io)) ([Github](http://github.com/mitchellh/packer)).

This repo utilizes the [packer-windows](https://github.com/joefitzgerald/packer-windows) templates. The packer configuiration files are based off existing configuration files form packer-windows with the addition of scripts to install software.

These scripts are used to generate the box images on [Atlas](https://atlas.hashicorp.com/senglin/boxes/win-2012r2-standard-vs2015community).

### Packer Version

[Packer](https://github.com/mitchellh/packer/blob/master/CHANGELOG.md) `0.5.1` or greater is required.

### Building the Virtualbox image

The configurations currently support building the image locally on your machine and uploading them to Hashicorp Atlas. I am not able to use `packer push` due to the size of the working files when generating the image (I think). If you find out a way to do this, please contribute back to this repository.


```
packer build -only=virtualbox-iso win-2012r2-standard-vs2015community.json
```

### Using the image in Vagrant
