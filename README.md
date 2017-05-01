# A13Bootstrapping

## Purpose

This repository hosts scripts and makefiles to bootstrap a Debian Stretch system using current "Das U-Boot" and Linux mainline kernel versions. The main purpose of this repository is to toy around with an OLIMEX A13-OLinuXino-WIFI with connected MOD-ENC28J60 and LCD-OLinuXino-7TS extensions.

## Dependencies

The host operating system used to create the images should be a Debian Stretch installation. The following software is needed to build an image:

* bc
* crossbuild-essential-armhf
* debootstrap
* device-tree-compiler
* git
* qemu-user-static
