#!/bin/bash
rm ./democracy-os.tar.gz
pushd ..
tar --exclude='docker' --exclude='node_modules' --exclude='.git' -pczf docker/democracy-os.tar.gz *
popd
docker build -t democracy-os .