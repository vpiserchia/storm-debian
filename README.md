# Debianization for the Apache Storm 2.X

The repository contains so called DEBIAN directory containing the scripts and configs files needed to package the
[Apache Storm](http://storm.apache.org/) server into a DEB package for the Debian Bullseye distro.

Waiting for a debian mantainer to adopt this package, this repository will rely on the original
binary distribution of Storm and later versions.

Using this repository, you will be able to have an Apache Strom debian package fully working for easy deploys into your clusters.

## Short DEB-packaging HowTo

1. Simply run the following script included in the repository

```deb-automate-build.sh```

### Debian packages overview

The script automate the creation of several packages:

```
grep Package debian/control

Package: storm
Package: storm-doc
Package: storm-common
Package: storm-ui
Package: storm-nimbus
Package: storm-supervisor
Package: storm-logviewer
Package: storm-drpc
Package: storm-tools
```

#### Storm Package

This is a meta package that depends on the essential packages required for storm.

#### Storm-common Package

This package contains the files required by all other storm packages.

#### Storm-doc Package

This package contains documentation and examples of Apache Storm usage.


#### Storm-ui Package

This package contains the init scripts to run storm ui.

#### Storm-supervisor Package

This package contains the init scripts to run storm supervisor.


### Storm-logviewer Package

This package contains the init scripts to run storm logviewer.

### Storm-drpc Package

This package contains the init scripts to run storm drpc.

### Storm-tools Package

This package contains the init scripts and libraries to run storm tools (sql, storm-kafka-monitor, submit-     tools).

## Installing the Storm debian packages

After the build is completed, it's as simple as:

```dpkg -i ../storm*_all.deb``` (replace the proper .deb file as the version may have changed)
