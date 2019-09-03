#!/bin/bash -e

docker build -t hugo-builder .

git clone https://github.com/kondoumh/kondoumh.com.git
cd kondoumh.com
git submodule update -i
docker run --rm -it -v ${PWD}/kondoumh.com:/src -u hugo hugo-builder hugo
