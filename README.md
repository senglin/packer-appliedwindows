
# Windows appliance scripts for Hashicorp Packer

### Introduction

This repository contains configuration files that can be used to create Windows boxes with preconfigured applications for Vagrant using Packer ([Website](http://www.packer.io)) ([Github](http://github.com/mitchellh/packer)).

This repo utilizes the [packer-windows](https://github.com/joefitzgerald/packer-windows) templates. The packer configuiration files are based off existing configuration files form packer-windows with the addition of scripts to install software.

These scripts are used to generate the box images on [Atlas](https://atlas.hashicorp.com/senglin/boxes/win-2012r2-standard-vs2015community).

### Prequisites

[Git-Scm](https://git-scm.com/downloads)
[Virtualbox](https://www.virtualbox.org/wiki/Downloads)
[Vagrant](https://www.vagrantup.com/downloads.html)
[Packer](https://www.packer.io/downloads.html) `0.5.1` or greater is required.

### Building the Virtualbox image

The configurations currently support building the image locally on your machine and uploading them to Hashicorp Atlas. I am not able to use `packer push` due to the size of the working files when generating the image (I think). If you find out a way to do this, please contribute back to this repository.

I have only tested on Virtualbox so far:

```
packer build -only=virtualbox-iso win-2012r2-standard-vs2015community.json
```

### Importing generated image into Vagrant

If you would like to test out the generated image, import the file into Vagrant:

```
vagrant box add win-2012r2-standard-vs2015community ./win-2012r2-standard-vs2015community_virtualbox.box
```

### Using imported image

Out side this repository, create a new folder and instantiate the newly imported VM.

```
mkdir testimage; cd testimage
vagrant init win-2012r2-standard-vs2015community; vagrant up --provider virtualbox
vagrant rdp
```
