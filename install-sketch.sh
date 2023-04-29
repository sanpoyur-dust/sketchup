#!/bin/sh

git submodule update --init --recursive
cd sketch-legacy
cd sketch-backend && ./autogen.sh && ./configure && make -j4 && cd ..
mkdir -p $HOME/.local/bin
cd sketch-frontend && make system-install DESTDIR=$HOME/.local/bin -j4 && cd ..
cd ..
