#!/bin/sh
set -e
set -x

autopoint  --force
libtoolize --automake --copy --force
aclocal -I m4 --force
automake --add-missing --copy --force
autoconf --force
./configure
