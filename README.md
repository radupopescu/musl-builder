# musl-builder - Container for fully static compilation of C/C++ applications

## Overview

This container can be used to build applications using the *musl* C library to perform a fully
static linking. It supports C or C++ projects configured with CMake.

This container is based on Alpine Linux. On top of the base image it installs the the GCC compilers and CMake.

An example of usage can be found at: `https://github.com/radupopescu/musl_test`. Basically, mount the root of the project
you want to compile in the container and run any build commands needed:

```bash
#!/bin/sh

export WORKDIR=/opt/src
rm -rf build-musl

docker run --rm -it -v "${PWD}":"${WORKDIR}" radupopescu/musl-builder \
    sh -c "cd ${WORKDIR} && mkdir build-musl && cd build-musl && cmake -D CMAKE_EXE_LINKER_FLAGS=\"-static\" ../ && make"
```

## License and authorship

The contributors are listed in AUTHORS. This project uses the MPL v2 license, see LICENSE.

## Issues

To report an issue, use the [musl-builder issue tracker](https://github.com/radupopescu/musl-builder/issues) at github.com.

