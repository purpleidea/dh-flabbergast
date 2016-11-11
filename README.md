# dh-flabbergast

This package provides
[Debhelper](https://alioth.debian.org/projects/debhelper/) tools to make
building Debian packages of Flabbergast libraries. It manages the inter-package
dependencies automatically.

[Repository](https://github.com/flabbergast-config/dh-flabbergast)

## Installation
This package can be installed via apt-get:

    apt-add-repository ppa:flabbergast/ppa && apt-get update && apt-get install dh-flabbergast

Or installed manually:

    sudo apt-get install perl debhelper
    make && sudo make install

## Usage
For a package, first, in `debian/rules`, include `o_0` as an argument to `dh`:

    #!/usr/bin/make -f
    # -*- makefile -*-
    %:
    	dh $@ --with o_0

In the `debian/control` file, use `${flabbergast:Depends}` to add the dependency:

    Package: awesome-flabbergast
    Architecture: all
    Depends: ${misc:Depends}, ${flabbergast:Depends}
    Description: Awesome templates for Flabbergast
     Does some stuff

