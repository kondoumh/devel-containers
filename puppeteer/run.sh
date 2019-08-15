#!/bin/bash -xe

export SCRIPT_DIR=$(cd $(dirname $0); pwd)
docker-compose run puppeteer node hello.js