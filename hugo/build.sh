#!/bin/bash -e

docker build -t hugo-builder .

git clone https://github.com/kondoumh/kondoumh.com.git
pushd kondoumh.com
git submodule update -i
popd
if [ -e public  ]; then
  sudo rm -rf public
fi
mkdir public
docker run --rm -it \
	-v ${PWD}/kondoumh.com:/src:rw \
	-v ${PWD}/public:/public:rw \
	-e HUGO_ENV=production \
	hugo-builder \
	hugo \
	  --destination /public
sudo rm -rf ${PWD}/kondoumh.com
